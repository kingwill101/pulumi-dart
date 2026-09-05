import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_system_association_args.dart';
import 'file_system_association_cache_attributes.dart';
import 'file_system_association_state.dart';

/// Associate an Amazon FSx file system with the FSx File Gateway. After the association process is complete, the file shares on the Amazon FSx file system are available for access through the gateway. This operation only supports the FSx File Gateway type.
///
/// [FSx File Gateway requirements](https://docs.aws.amazon.com/filegateway/latest/filefsxw/Requirements.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.FileSystemAssociation("example", {
///     gatewayArn: exampleAwsStoragegatewayGateway.arn,
///     locationArn: exampleAwsFsxWindowsFileSystem.arn,
///     username: "Admin",
///     password: "avoid-plaintext-passwords",
///     auditDestinationArn: exampleAwsS3Bucket.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.FileSystemAssociation("example",
///     gateway_arn=example_aws_storagegateway_gateway["arn"],
///     location_arn=example_aws_fsx_windows_file_system["arn"],
///     username="Admin",
///     password="avoid-plaintext-passwords",
///     audit_destination_arn=example_aws_s3_bucket["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.StorageGateway.FileSystemAssociation("example", new()
///     {
///         GatewayArn = exampleAwsStoragegatewayGateway.Arn,
///         LocationArn = exampleAwsFsxWindowsFileSystem.Arn,
///         Username = "Admin",
///         Password = "avoid-plaintext-passwords",
///         AuditDestinationArn = exampleAwsS3Bucket.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := storagegateway.NewFileSystemAssociation(ctx, "example", &storagegateway.FileSystemAssociationArgs{
/// 			GatewayArn:          pulumi.Any(exampleAwsStoragegatewayGateway.Arn),
/// 			LocationArn:         pulumi.Any(exampleAwsFsxWindowsFileSystem.Arn),
/// 			Username:            pulumi.String("Admin"),
/// 			Password:            pulumi.String("avoid-plaintext-passwords"),
/// 			AuditDestinationArn: pulumi.Any(exampleAwsS3Bucket.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_storagegateway_filesystemassociation" "example" {
///   gateway_arn           = exampleAwsStoragegatewayGateway.arn
///   location_arn          = exampleAwsFsxWindowsFileSystem.arn
///   username              = "Admin"
///   password              = "avoid-plaintext-passwords"
///   audit_destination_arn = exampleAwsS3Bucket.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.storagegateway.FileSystemAssociation;
/// import com.pulumi.aws.storagegateway.FileSystemAssociationArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new FileSystemAssociation("example", FileSystemAssociationArgs.builder()
///             .gatewayArn(exampleAwsStoragegatewayGateway.arn())
///             .locationArn(exampleAwsFsxWindowsFileSystem.arn())
///             .username("Admin")
///             .password("avoid-plaintext-passwords")
///             .auditDestinationArn(exampleAwsS3Bucket.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:storagegateway:FileSystemAssociation
///     properties:
///       gatewayArn: ${exampleAwsStoragegatewayGateway.arn}
///       locationArn: ${exampleAwsFsxWindowsFileSystem.arn}
///       username: Admin
///       password: avoid-plaintext-passwords
///       auditDestinationArn: ${exampleAwsS3Bucket.arn}
/// ```
///
///
/// ### Required Services Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const awsServiceStoragegatewayAmiFILES3Latest = aws.ssm.getParameter({
///     name: "/aws/service/storagegateway/ami/FILE_S3/latest",
/// });
/// const test = new aws.ec2.Instance("test", {
///     ami: awsServiceStoragegatewayAmiFILES3Latest.then(awsServiceStoragegatewayAmiFILES3Latest => awsServiceStoragegatewayAmiFILES3Latest.value),
///     associatePublicIpAddress: true,
///     instanceType: aws.ec2.InstanceType[available.instanceType],
///     vpcSecurityGroupIds: [testAwsSecurityGroup.id],
///     subnetId: testAwsSubnet[0].id,
/// }, {
///     dependsOn: [
///         testAwsRoute,
///         testAwsVpcDhcpOptionsAssociation,
///     ],
/// });
/// const testGateway = new aws.storagegateway.Gateway("test", {
///     smbActiveDirectorySettings: {
///         domainName: testAwsDirectoryServiceDirectory.name,
///         password: testAwsDirectoryServiceDirectory.password,
///         username: "Admin",
///     },
///     gatewayIpAddress: test.publicIp,
///     gatewayName: "test-sgw",
///     gatewayTimezone: "GMT",
///     gatewayType: "FILE_FSX_SMB",
/// });
/// const testWindowsFileSystem = new aws.fsx.WindowsFileSystem("test", {
///     activeDirectoryId: testAwsDirectoryServiceDirectory.id,
///     securityGroupIds: [testAwsSecurityGroup.id],
///     skipFinalBackup: true,
///     storageCapacity: 32,
///     subnetIds: [testAwsSubnet[0].id],
///     throughputCapacity: 8,
/// });
/// const fsx = new aws.storagegateway.FileSystemAssociation("fsx", {
///     cacheAttributes: {
///         cacheStaleTimeoutInSeconds: 400,
///     },
///     gatewayArn: testGateway.arn,
///     locationArn: testWindowsFileSystem.arn,
///     username: "Admin",
///     password: testAwsDirectoryServiceDirectory.password,
///     auditDestinationArn: testAwsCloudwatchLogGroup.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// aws_service_storagegateway_ami_files3_latest = aws.ssm.get_parameter(name="/aws/service/storagegateway/ami/FILE_S3/latest")
/// test = aws.ec2.Instance("test",
///     ami=aws_service_storagegateway_ami_files3_latest.value,
///     associate_public_ip_address=True,
///     instance_type=aws.ec2.InstanceType(available["instanceType"]),
///     vpc_security_group_ids=[test_aws_security_group["id"]],
///     subnet_id=test_aws_subnet[0]["id"],
///     opts = pulumi.ResourceOptions(depends_on=[
///             test_aws_route,
///             test_aws_vpc_dhcp_options_association,
///         ]))
/// test_gateway = aws.storagegateway.Gateway("test",
///     smb_active_directory_settings={
///         "domain_name": test_aws_directory_service_directory["name"],
///         "password": test_aws_directory_service_directory["password"],
///         "username": "Admin",
///     },
///     gateway_ip_address=test.public_ip,
///     gateway_name="test-sgw",
///     gateway_timezone="GMT",
///     gateway_type="FILE_FSX_SMB")
/// test_windows_file_system = aws.fsx.WindowsFileSystem("test",
///     active_directory_id=test_aws_directory_service_directory["id"],
///     security_group_ids=[test_aws_security_group["id"]],
///     skip_final_backup=True,
///     storage_capacity=32,
///     subnet_ids=[test_aws_subnet[0]["id"]],
///     throughput_capacity=8)
/// fsx = aws.storagegateway.FileSystemAssociation("fsx",
///     cache_attributes={
///         "cache_stale_timeout_in_seconds": 400,
///     },
///     gateway_arn=test_gateway.arn,
///     location_arn=test_windows_file_system.arn,
///     username="Admin",
///     password=test_aws_directory_service_directory["password"],
///     audit_destination_arn=test_aws_cloudwatch_log_group["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var awsServiceStoragegatewayAmiFILES3Latest = Aws.Ssm.GetParameter.Invoke(new()
///     {
///         Name = "/aws/service/storagegateway/ami/FILE_S3/latest",
///     });
///
///     var test = new Aws.Ec2.Instance("test", new()
///     {
///         Ami = awsServiceStoragegatewayAmiFILES3Latest.Apply(getParameterResult => getParameterResult.Value),
///         AssociatePublicIpAddress = true,
///         InstanceType = System.Enum.Parse<Aws.Ec2.InstanceType>(available.InstanceType),
///         VpcSecurityGroupIds = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///         SubnetId = testAwsSubnet[0].Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testAwsRoute,
///             testAwsVpcDhcpOptionsAssociation,
///         },
///     });
///
///     var testGateway = new Aws.StorageGateway.Gateway("test", new()
///     {
///         SmbActiveDirectorySettings = new Aws.StorageGateway.Inputs.GatewaySmbActiveDirectorySettingsArgs
///         {
///             DomainName = testAwsDirectoryServiceDirectory.Name,
///             Password = testAwsDirectoryServiceDirectory.Password,
///             Username = "Admin",
///         },
///         GatewayIpAddress = test.PublicIp,
///         GatewayName = "test-sgw",
///         GatewayTimezone = "GMT",
///         GatewayType = "FILE_FSX_SMB",
///     });
///
///     var testWindowsFileSystem = new Aws.Fsx.WindowsFileSystem("test", new()
///     {
///         ActiveDirectoryId = testAwsDirectoryServiceDirectory.Id,
///         SecurityGroupIds = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///         SkipFinalBackup = true,
///         StorageCapacity = 32,
///         SubnetIds = new[]
///         {
///             testAwsSubnet[0].Id,
///         },
///         ThroughputCapacity = 8,
///     });
///
///     var fsx = new Aws.StorageGateway.FileSystemAssociation("fsx", new()
///     {
///         CacheAttributes = new Aws.StorageGateway.Inputs.FileSystemAssociationCacheAttributesArgs
///         {
///             CacheStaleTimeoutInSeconds = 400,
///         },
///         GatewayArn = testGateway.Arn,
///         LocationArn = testWindowsFileSystem.Arn,
///         Username = "Admin",
///         Password = testAwsDirectoryServiceDirectory.Password,
///         AuditDestinationArn = testAwsCloudwatchLogGroup.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fsx"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		awsServiceStoragegatewayAmiFILES3Latest, err := ssm.LookupParameter(ctx, &ssm.LookupParameterArgs{
/// 			Name: "/aws/service/storagegateway/ami/FILE_S3/latest",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := ec2.NewInstance(ctx, "test", &ec2.InstanceArgs{
/// 			Ami:                      pulumi.String(awsServiceStoragegatewayAmiFILES3Latest.Value),
/// 			AssociatePublicIpAddress: pulumi.Bool(true),
/// 			InstanceType:             ec2.InstanceType(available.InstanceType),
/// 			VpcSecurityGroupIds: pulumi.StringArray{
/// 				testAwsSecurityGroup.Id,
/// 			},
/// 			SubnetId: pulumi.Any(testAwsSubnet[0].Id),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testAwsRoute,
/// 			testAwsVpcDhcpOptionsAssociation,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testGateway, err := storagegateway.NewGateway(ctx, "test", &storagegateway.GatewayArgs{
/// 			SmbActiveDirectorySettings: &storagegateway.GatewaySmbActiveDirectorySettingsArgs{
/// 				DomainName: pulumi.Any(testAwsDirectoryServiceDirectory.Name),
/// 				Password:   pulumi.Any(testAwsDirectoryServiceDirectory.Password),
/// 				Username:   pulumi.String("Admin"),
/// 			},
/// 			GatewayIpAddress: test.PublicIp,
/// 			GatewayName:      pulumi.String("test-sgw"),
/// 			GatewayTimezone:  pulumi.String("GMT"),
/// 			GatewayType:      pulumi.String("FILE_FSX_SMB"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testWindowsFileSystem, err := fsx.NewWindowsFileSystem(ctx, "test", &fsx.WindowsFileSystemArgs{
/// 			ActiveDirectoryId: pulumi.Any(testAwsDirectoryServiceDirectory.Id),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				testAwsSecurityGroup.Id,
/// 			},
/// 			SkipFinalBackup: pulumi.Bool(true),
/// 			StorageCapacity: pulumi.Int(32),
/// 			SubnetIds: pulumi.StringArray{
/// 				testAwsSubnet[0].Id,
/// 			},
/// 			ThroughputCapacity: pulumi.Int(8),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storagegateway.NewFileSystemAssociation(ctx, "fsx", &storagegateway.FileSystemAssociationArgs{
/// 			CacheAttributes: &storagegateway.FileSystemAssociationCacheAttributesArgs{
/// 				CacheStaleTimeoutInSeconds: pulumi.Int(400),
/// 			},
/// 			GatewayArn:          testGateway.Arn,
/// 			LocationArn:         testWindowsFileSystem.Arn,
/// 			Username:            pulumi.String("Admin"),
/// 			Password:            pulumi.Any(testAwsDirectoryServiceDirectory.Password),
/// 			AuditDestinationArn: pulumi.Any(testAwsCloudwatchLogGroup.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_ssm_getparameter" "awsServiceStoragegatewayAmiFILES3Latest" {
///   name = "/aws/service/storagegateway/ami/FILE_S3/latest"
/// }
///
/// resource "aws_ec2_instance" "test" {
///   depends_on                  = [testAwsRoute, testAwsVpcDhcpOptionsAssociation]
///   ami                         = data.aws_ssm_getparameter.awsServiceStoragegatewayAmiFILES3Latest.value
///   associate_public_ip_address = true
///   instance_type               = available.instanceType
///   vpc_security_group_ids      = [testAwsSecurityGroup.id]
///   subnet_id                   = testAwsSubnet[0].id
/// }
/// resource "aws_storagegateway_gateway" "test" {
///   smb_active_directory_settings = {
///     domain_name = testAwsDirectoryServiceDirectory.name
///     password    = testAwsDirectoryServiceDirectory.password
///     username    = "Admin"
///   }
///   gateway_ip_address = aws_ec2_instance.test.public_ip
///   gateway_name       = "test-sgw"
///   gateway_timezone   = "GMT"
///   gateway_type       = "FILE_FSX_SMB"
/// }
/// resource "aws_fsx_windowsfilesystem" "test" {
///   active_directory_id = testAwsDirectoryServiceDirectory.id
///   security_group_ids  = [testAwsSecurityGroup.id]
///   skip_final_backup   = true
///   storage_capacity    = 32
///   subnet_ids          = [testAwsSubnet[0].id]
///   throughput_capacity = 8
/// }
/// resource "aws_storagegateway_filesystemassociation" "fsx" {
///   cache_attributes = {
///     cache_stale_timeout_in_seconds = 400
///   }
///   gateway_arn           = aws_storagegateway_gateway.test.arn
///   location_arn          = aws_fsx_windowsfilesystem.test.arn
///   username              = "Admin"
///   password              = testAwsDirectoryServiceDirectory.password
///   audit_destination_arn = testAwsCloudwatchLogGroup.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.SsmFunctions;
/// import com.pulumi.aws.ssm.inputs.GetParameterArgs;
/// import com.pulumi.aws.ec2.Instance;
/// import com.pulumi.aws.ec2.InstanceArgs;
/// import com.pulumi.aws.storagegateway.Gateway;
/// import com.pulumi.aws.storagegateway.GatewayArgs;
/// import com.pulumi.aws.storagegateway.inputs.GatewaySmbActiveDirectorySettingsArgs;
/// import com.pulumi.aws.fsx.WindowsFileSystem;
/// import com.pulumi.aws.fsx.WindowsFileSystemArgs;
/// import com.pulumi.aws.storagegateway.FileSystemAssociation;
/// import com.pulumi.aws.storagegateway.FileSystemAssociationArgs;
/// import com.pulumi.aws.storagegateway.inputs.FileSystemAssociationCacheAttributesArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var awsServiceStoragegatewayAmiFILES3Latest = SsmFunctions.getParameter(GetParameterArgs.builder()
///             .name("/aws/service/storagegateway/ami/FILE_S3/latest")
///             .build());
///
///         var test = new Instance("test", InstanceArgs.builder()
///             .ami(awsServiceStoragegatewayAmiFILES3Latest.value())
///             .associatePublicIpAddress(true)
///             .instanceType(available.instanceType())
///             .vpcSecurityGroupIds(testAwsSecurityGroup.id())
///             .subnetId(testAwsSubnet[0].id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     testAwsRoute,
///                     testAwsVpcDhcpOptionsAssociation)
///                 .build());
///
///         var testGateway = new Gateway("testGateway", GatewayArgs.builder()
///             .smbActiveDirectorySettings(GatewaySmbActiveDirectorySettingsArgs.builder()
///                 .domainName(testAwsDirectoryServiceDirectory.name())
///                 .password(testAwsDirectoryServiceDirectory.password())
///                 .username("Admin")
///                 .build())
///             .gatewayIpAddress(test.publicIp())
///             .gatewayName("test-sgw")
///             .gatewayTimezone("GMT")
///             .gatewayType("FILE_FSX_SMB")
///             .build());
///
///         var testWindowsFileSystem = new WindowsFileSystem("testWindowsFileSystem", WindowsFileSystemArgs.builder()
///             .activeDirectoryId(testAwsDirectoryServiceDirectory.id())
///             .securityGroupIds(testAwsSecurityGroup.id())
///             .skipFinalBackup(true)
///             .storageCapacity(32)
///             .subnetIds(testAwsSubnet[0].id())
///             .throughputCapacity(8)
///             .build());
///
///         var fsx = new FileSystemAssociation("fsx", FileSystemAssociationArgs.builder()
///             .cacheAttributes(FileSystemAssociationCacheAttributesArgs.builder()
///                 .cacheStaleTimeoutInSeconds(400)
///                 .build())
///             .gatewayArn(testGateway.arn())
///             .locationArn(testWindowsFileSystem.arn())
///             .username("Admin")
///             .password(testAwsDirectoryServiceDirectory.password())
///             .auditDestinationArn(testAwsCloudwatchLogGroup.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:Instance
///     properties:
///       ami: ${awsServiceStoragegatewayAmiFILES3Latest.value}
///       associatePublicIpAddress: true
///       instanceType: ${available.instanceType}
///       vpcSecurityGroupIds:
///         - ${testAwsSecurityGroup.id}
///       subnetId: ${testAwsSubnet[0].id}
///     options:
///       dependsOn:
///         - ${testAwsRoute}
///         - ${testAwsVpcDhcpOptionsAssociation}
///   testGateway:
///     type: aws:storagegateway:Gateway
///     name: test
///     properties:
///       smbActiveDirectorySettings:
///         domainName: ${testAwsDirectoryServiceDirectory.name}
///         password: ${testAwsDirectoryServiceDirectory.password}
///         username: Admin
///       gatewayIpAddress: ${test.publicIp}
///       gatewayName: test-sgw
///       gatewayTimezone: GMT
///       gatewayType: FILE_FSX_SMB
///   testWindowsFileSystem:
///     type: aws:fsx:WindowsFileSystem
///     name: test
///     properties:
///       activeDirectoryId: ${testAwsDirectoryServiceDirectory.id}
///       securityGroupIds:
///         - ${testAwsSecurityGroup.id}
///       skipFinalBackup: true
///       storageCapacity: 32
///       subnetIds:
///         - ${testAwsSubnet[0].id}
///       throughputCapacity: 8
///   fsx:
///     type: aws:storagegateway:FileSystemAssociation
///     properties:
///       cacheAttributes:
///         cacheStaleTimeoutInSeconds: 400
///       gatewayArn: ${testGateway.arn}
///       locationArn: ${testWindowsFileSystem.arn}
///       username: Admin
///       password: ${testAwsDirectoryServiceDirectory.password}
///       auditDestinationArn: ${testAwsCloudwatchLogGroup.arn}
/// variables:
///   awsServiceStoragegatewayAmiFILES3Latest:
///     fn::invoke:
///       function: aws:ssm:getParameter
///       arguments:
///         name: /aws/service/storagegateway/ami/FILE_S3/latest
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.FileSystemAssociation` using the FSx file system association ARN. For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/fileSystemAssociation:FileSystemAssociation example arn:aws:storagegateway:us-east-1:123456789012:fs-association/fsa-0DA347732FDB40125
/// ```
class FileSystemAssociation extends pulumi.CustomResource {
  /// ARN of the newly created file system association.
  late final pulumi.Output<String> arn;
  /// ARN of the storage used for the audit logs.
  late final pulumi.Output<String?> auditDestinationArn;
  /// Refresh cache information. see Cache Attributes for more details.
  late final pulumi.Output<FileSystemAssociationCacheAttributes?> cacheAttributes;
  /// ARN of the gateway.
  late final pulumi.Output<String> gatewayArn;
  /// ARN of the Amazon FSx file system to associate with the FSx File Gateway.
  late final pulumi.Output<String> locationArn;
  /// The password of the user credential.
  late final pulumi.Output<String> password;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The user name of the user credential that has permission to access the root share of the Amazon FSx file system. The user account must belong to the Amazon FSx delegated admin user group.
  late final pulumi.Output<String> username;

  /// Creates a new [FileSystemAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FileSystemAssociation]. {@macro pulumi_storagegateway_file_system_association_file_system_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FileSystemAssociation(
    String name, {
    FileSystemAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/fileSystemAssociation:FileSystemAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['password'],
        ) {
    arn = registerOutput<String>('arn');
    auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    cacheAttributes = registerOutput<FileSystemAssociationCacheAttributes?>('cacheAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemAssociationCacheAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayArn = registerOutput<String>('gatewayArn');
    locationArn = registerOutput<String>('locationArn');
    password = registerOutput<String>('password', isSecret: true);
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    username = registerOutput<String>('username');
  }

  /// Gets an existing [FileSystemAssociation] resource's state with the given [name] and [id].
  static FileSystemAssociation get(
    String name,
    pulumi.Input<String> id, {
    FileSystemAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FileSystemAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FileSystemAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/fileSystemAssociation:FileSystemAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    cacheAttributes = registerOutput<FileSystemAssociationCacheAttributes?>('cacheAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemAssociationCacheAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayArn = registerOutput<String>('gatewayArn');
    locationArn = registerOutput<String>('locationArn');
    password = registerOutput<String>('password', isSecret: true);
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    username = registerOutput<String>('username');
  }

  /// Creates a typed reference to an existing [FileSystemAssociation] resource.
  FileSystemAssociation.reference(String urn)
    : super(
        'aws:storagegateway/fileSystemAssociation:FileSystemAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['password'],
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    auditDestinationArn = registerOutput<String?>('auditDestinationArn');
    cacheAttributes = registerOutput<FileSystemAssociationCacheAttributes?>('cacheAttributes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FileSystemAssociationCacheAttributes.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    gatewayArn = registerOutput<String>('gatewayArn');
    locationArn = registerOutput<String>('locationArn');
    password = registerOutput<String>('password', isSecret: true);
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    username = registerOutput<String>('username');
  }
}
