import 'package:pulumi/pulumi.dart' as pulumi;
import 'efs_location_args.dart';
import 'efs_location_ec2_config.dart';
import 'efs_location_state.dart';

/// Manages an AWS DataSync EFS Location.
///
/// &gt; **NOTE:** The EFS File System must have a mounted EFS Mount Target before creating this resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.EfsLocation("example", {
///     ec2Config: {
///         securityGroupArns: [exampleAwsSecurityGroup.arn],
///         subnetArn: exampleAwsSubnet.arn,
///     },
///     efsFileSystemArn: exampleAwsEfsMountTarget.fileSystemArn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.EfsLocation("example",
///     ec2_config={
///         "security_group_arns": [example_aws_security_group["arn"]],
///         "subnet_arn": example_aws_subnet["arn"],
///     },
///     efs_file_system_arn=example_aws_efs_mount_target["fileSystemArn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DataSync.EfsLocation("example", new()
///     {
///         Ec2Config = new Aws.DataSync.Inputs.EfsLocationEc2ConfigArgs
///         {
///             SecurityGroupArns = new[]
///             {
///                 exampleAwsSecurityGroup.Arn,
///             },
///             SubnetArn = exampleAwsSubnet.Arn,
///         },
///         EfsFileSystemArn = exampleAwsEfsMountTarget.FileSystemArn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datasync.NewEfsLocation(ctx, "example", &datasync.EfsLocationArgs{
/// 			Ec2Config: &datasync.EfsLocationEc2ConfigArgs{
/// 				SecurityGroupArns: pulumi.StringArray{
/// 					exampleAwsSecurityGroup.Arn,
/// 				},
/// 				SubnetArn: pulumi.Any(exampleAwsSubnet.Arn),
/// 			},
/// 			EfsFileSystemArn: pulumi.Any(exampleAwsEfsMountTarget.FileSystemArn),
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
/// resource "aws_datasync_efslocation" "example" {
///   ec2_config = {
///     security_group_arns = [exampleAwsSecurityGroup.arn]
///     subnet_arn          = exampleAwsSubnet.arn
///   }
///   efs_file_system_arn = exampleAwsEfsMountTarget.fileSystemArn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datasync.EfsLocation;
/// import com.pulumi.aws.datasync.EfsLocationArgs;
/// import com.pulumi.aws.datasync.inputs.EfsLocationEc2ConfigArgs;
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
///         var example = new EfsLocation("example", EfsLocationArgs.builder()
///             .ec2Config(EfsLocationEc2ConfigArgs.builder()
///                 .securityGroupArns(exampleAwsSecurityGroup.arn())
///                 .subnetArn(exampleAwsSubnet.arn())
///                 .build())
///             .efsFileSystemArn(exampleAwsEfsMountTarget.fileSystemArn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:datasync:EfsLocation
///     properties:
///       ec2Config:
///         securityGroupArns:
///           - ${exampleAwsSecurityGroup.arn}
///         subnetArn: ${exampleAwsSubnet.arn}
///       efsFileSystemArn: ${exampleAwsEfsMountTarget.fileSystemArn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the DataSync EFS location.
///
///
/// Using `pulumi import`, import `aws.datasync.EfsLocation` using the DataSync Task ARN. For example:
///
/// ```sh
/// $ pulumi import aws:datasync/efsLocation:EfsLocation example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class EfsLocation extends pulumi.CustomResource {
  /// ARN of the access point that DataSync uses to access the Amazon EFS file system.
  late final pulumi.Output<String?> accessPointArn;
  /// ARN of the DataSync Location.
  late final pulumi.Output<String> arn;
  /// Configuration block containing EC2 configurations for connecting to the EFS File System.
  late final pulumi.Output<EfsLocationEc2Config> ec2Config;
  /// ARN of EFS File System.
  late final pulumi.Output<String> efsFileSystemArn;
  /// Specifies an Identity and Access Management (IAM) role that DataSync assumes when mounting the Amazon EFS file system.
  late final pulumi.Output<String?> fileSystemAccessRoleArn;
  /// Specifies whether you want DataSync to use TLS encryption when transferring data to or from your Amazon EFS file system. Valid values are `NONE` and `TLS1_2`.
  late final pulumi.Output<String?> inTransitEncryption;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Subdirectory to perform actions as source or destination. Default `/`.
  late final pulumi.Output<String?> subdirectory;
  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<String> uri;

  /// Creates a new [EfsLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EfsLocation]. {@macro pulumi_datasync_efs_location_efs_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EfsLocation(
    String name, {
    EfsLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/efsLocation:EfsLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    accessPointArn = registerOutput<String?>('accessPointArn');
    arn = registerOutput<String>('arn');
    ec2Config = registerOutput<EfsLocationEc2Config>('ec2Config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EfsLocationEc2Config.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    efsFileSystemArn = registerOutput<String>('efsFileSystemArn');
    fileSystemAccessRoleArn = registerOutput<String?>('fileSystemAccessRoleArn');
    inTransitEncryption = registerOutput<String?>('inTransitEncryption');
    region = registerOutput<String>('region');
    subdirectory = registerOutput<String?>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uri = registerOutput<String>('uri');
  }

  /// Gets an existing [EfsLocation] resource's state with the given [name] and [id].
  static EfsLocation get(
    String name,
    pulumi.Input<String> id, {
    EfsLocationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EfsLocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EfsLocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datasync/efsLocation:EfsLocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPointArn = registerOutput<String?>('accessPointArn');
    arn = registerOutput<String>('arn');
    ec2Config = registerOutput<EfsLocationEc2Config>('ec2Config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EfsLocationEc2Config.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    efsFileSystemArn = registerOutput<String>('efsFileSystemArn');
    fileSystemAccessRoleArn = registerOutput<String?>('fileSystemAccessRoleArn');
    inTransitEncryption = registerOutput<String?>('inTransitEncryption');
    region = registerOutput<String>('region');
    subdirectory = registerOutput<String?>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uri = registerOutput<String>('uri');
  }

  /// Creates a typed reference to an existing [EfsLocation] resource.
  EfsLocation.reference(String urn)
    : super(
        'aws:datasync/efsLocation:EfsLocation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accessPointArn = registerOutput<String?>('accessPointArn');
    arn = registerOutput<String>('arn');
    ec2Config = registerOutput<EfsLocationEc2Config>('ec2Config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EfsLocationEc2Config.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    efsFileSystemArn = registerOutput<String>('efsFileSystemArn');
    fileSystemAccessRoleArn = registerOutput<String?>('fileSystemAccessRoleArn');
    inTransitEncryption = registerOutput<String?>('inTransitEncryption');
    region = registerOutput<String>('region');
    subdirectory = registerOutput<String?>('subdirectory');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    uri = registerOutput<String>('uri');
  }
}
