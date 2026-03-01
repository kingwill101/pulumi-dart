import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_active_directory_config.dart';
import 'directory_args.dart';
import 'directory_certificate_based_auth_properties.dart';
import 'directory_saml_properties.dart';
import 'directory_self_service_permissions.dart';
import 'directory_workspace_access_properties.dart';
import 'directory_workspace_creation_properties.dart';

/// Provides a WorkSpaces directory in AWS WorkSpaces Service.
///
/// > **NOTE:** AWS WorkSpaces service requires [`workspaces_DefaultRole`](https://docs.aws.amazon.com/workspaces/latest/adminguide/workspaces-access-control.html#create-default-role) IAM role to operate normally.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleA = new aws.ec2.Subnet("example_a", {
///     vpcId: exampleVpc.id,
///     availabilityZone: "us-east-1a",
///     cidrBlock: "10.0.0.0/24",
/// });
/// const exampleB = new aws.ec2.Subnet("example_b", {
///     vpcId: exampleVpc.id,
///     availabilityZone: "us-east-1b",
///     cidrBlock: "10.0.1.0/24",
/// });
/// const exampleDirectory = new aws.directoryservice.Directory("example", {
///     name: "corp.example.com",
///     password: "#S1ncerely",
///     size: "Small",
///     vpcSettings: {
///         vpcId: exampleVpc.id,
///         subnetIds: [
///             exampleA.id,
///             exampleB.id,
///         ],
///     },
/// });
/// const workspaces = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["workspaces.amazonaws.com"],
///         }],
///     }],
/// });
/// const workspacesDefault = new aws.iam.Role("workspaces_default", {
///     name: "workspaces_DefaultRole",
///     assumeRolePolicy: workspaces.then(workspaces => workspaces.json),
/// });
/// const workspacesDefaultServiceAccess = new aws.iam.RolePolicyAttachment("workspaces_default_service_access", {
///     role: workspacesDefault.name,
///     policyArn: "arn:aws:iam::aws:policy/AmazonWorkSpacesServiceAccess",
/// });
/// const workspacesDefaultSelfServiceAccess = new aws.iam.RolePolicyAttachment("workspaces_default_self_service_access", {
///     role: workspacesDefault.name,
///     policyArn: "arn:aws:iam::aws:policy/AmazonWorkSpacesSelfServiceAccess",
/// });
/// const exampleC = new aws.ec2.Subnet("example_c", {
///     vpcId: exampleVpc.id,
///     availabilityZone: "us-east-1c",
///     cidrBlock: "10.0.2.0/24",
/// });
/// const exampleD = new aws.ec2.Subnet("example_d", {
///     vpcId: exampleVpc.id,
///     availabilityZone: "us-east-1d",
///     cidrBlock: "10.0.3.0/24",
/// });
/// const example = new aws.workspaces.Directory("example", {
///     directoryId: exampleDirectory.id,
///     subnetIds: [
///         exampleC.id,
///         exampleD.id,
///     ],
///     tags: {
///         Example: "true",
///     },
///     certificateBasedAuthProperties: {
///         certificateAuthorityArn: "arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012",
///         status: "ENABLED",
///     },
///     samlProperties: {
///         userAccessUrl: "https://sso.example.com/",
///         status: "ENABLED",
///     },
///     selfServicePermissions: {
///         changeComputeType: true,
///         increaseVolumeSize: true,
///         rebuildWorkspace: true,
///         restartWorkspace: true,
///         switchRunningMode: true,
///     },
///     workspaceAccessProperties: {
///         deviceTypeAndroid: "ALLOW",
///         deviceTypeChromeos: "ALLOW",
///         deviceTypeIos: "ALLOW",
///         deviceTypeLinux: "DENY",
///         deviceTypeOsx: "ALLOW",
///         deviceTypeWeb: "DENY",
///         deviceTypeWindows: "DENY",
///         deviceTypeZeroclient: "DENY",
///     },
///     workspaceCreationProperties: {
///         customSecurityGroupId: exampleAwsSecurityGroup.id,
///         defaultOu: "OU=AWS,DC=Workgroup,DC=Example,DC=com",
///         enableInternetAccess: true,
///         enableMaintenanceMode: true,
///         userEnabledAsLocalAdministrator: true,
///     },
/// }, {
///     dependsOn: [
///         workspacesDefaultServiceAccess,
///         workspacesDefaultSelfServiceAccess,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_a = aws.ec2.Subnet("example_a",
///     vpc_id=example_vpc.id,
///     availability_zone="us-east-1a",
///     cidr_block="10.0.0.0/24")
/// example_b = aws.ec2.Subnet("example_b",
///     vpc_id=example_vpc.id,
///     availability_zone="us-east-1b",
///     cidr_block="10.0.1.0/24")
/// example_directory = aws.directoryservice.Directory("example",
///     name="corp.example.com",
///     password="#S1ncerely",
///     size="Small",
///     vpc_settings={
///         "vpc_id": example_vpc.id,
///         "subnet_ids": [
///             example_a.id,
///             example_b.id,
///         ],
///     })
/// workspaces = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["workspaces.amazonaws.com"],
///     }],
/// }])
/// workspaces_default = aws.iam.Role("workspaces_default",
///     name="workspaces_DefaultRole",
///     assume_role_policy=workspaces.json)
/// workspaces_default_service_access = aws.iam.RolePolicyAttachment("workspaces_default_service_access",
///     role=workspaces_default.name,
///     policy_arn="arn:aws:iam::aws:policy/AmazonWorkSpacesServiceAccess")
/// workspaces_default_self_service_access = aws.iam.RolePolicyAttachment("workspaces_default_self_service_access",
///     role=workspaces_default.name,
///     policy_arn="arn:aws:iam::aws:policy/AmazonWorkSpacesSelfServiceAccess")
/// example_c = aws.ec2.Subnet("example_c",
///     vpc_id=example_vpc.id,
///     availability_zone="us-east-1c",
///     cidr_block="10.0.2.0/24")
/// example_d = aws.ec2.Subnet("example_d",
///     vpc_id=example_vpc.id,
///     availability_zone="us-east-1d",
///     cidr_block="10.0.3.0/24")
/// example = aws.workspaces.Directory("example",
///     directory_id=example_directory.id,
///     subnet_ids=[
///         example_c.id,
///         example_d.id,
///     ],
///     tags={
///         "Example": "true",
///     },
///     certificate_based_auth_properties={
///         "certificate_authority_arn": "arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012",
///         "status": "ENABLED",
///     },
///     saml_properties={
///         "user_access_url": "https://sso.example.com/",
///         "status": "ENABLED",
///     },
///     self_service_permissions={
///         "change_compute_type": True,
///         "increase_volume_size": True,
///         "rebuild_workspace": True,
///         "restart_workspace": True,
///         "switch_running_mode": True,
///     },
///     workspace_access_properties={
///         "device_type_android": "ALLOW",
///         "device_type_chromeos": "ALLOW",
///         "device_type_ios": "ALLOW",
///         "device_type_linux": "DENY",
///         "device_type_osx": "ALLOW",
///         "device_type_web": "DENY",
///         "device_type_windows": "DENY",
///         "device_type_zeroclient": "DENY",
///     },
///     workspace_creation_properties={
///         "custom_security_group_id": example_aws_security_group["id"],
///         "default_ou": "OU=AWS,DC=Workgroup,DC=Example,DC=com",
///         "enable_internet_access": True,
///         "enable_maintenance_mode": True,
///         "user_enabled_as_local_administrator": True,
///     },
///     opts = pulumi.ResourceOptions(depends_on=[
///             workspaces_default_service_access,
///             workspaces_default_self_service_access,
///         ]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleA = new Aws.Ec2.Subnet("example_a", new()
///     {
///         VpcId = exampleVpc.Id,
///         AvailabilityZone = "us-east-1a",
///         CidrBlock = "10.0.0.0/24",
///     });
///
///     var exampleB = new Aws.Ec2.Subnet("example_b", new()
///     {
///         VpcId = exampleVpc.Id,
///         AvailabilityZone = "us-east-1b",
///         CidrBlock = "10.0.1.0/24",
///     });
///
///     var exampleDirectory = new Aws.DirectoryService.Directory("example", new()
///     {
///         Name = "corp.example.com",
///         Password = "#S1ncerely",
///         Size = "Small",
///         VpcSettings = new Aws.DirectoryService.Inputs.DirectoryVpcSettingsArgs
///         {
///             VpcId = exampleVpc.Id,
///             SubnetIds = new[]
///             {
///                 exampleA.Id,
///                 exampleB.Id,
///             },
///         },
///     });
///
///     var workspaces = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Actions = new[]
///                 {
///                     "sts:AssumeRole",
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "workspaces.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var workspacesDefault = new Aws.Iam.Role("workspaces_default", new()
///     {
///         Name = "workspaces_DefaultRole",
///         AssumeRolePolicy = workspaces.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var workspacesDefaultServiceAccess = new Aws.Iam.RolePolicyAttachment("workspaces_default_service_access", new()
///     {
///         Role = workspacesDefault.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonWorkSpacesServiceAccess",
///     });
///
///     var workspacesDefaultSelfServiceAccess = new Aws.Iam.RolePolicyAttachment("workspaces_default_self_service_access", new()
///     {
///         Role = workspacesDefault.Name,
///         PolicyArn = "arn:aws:iam::aws:policy/AmazonWorkSpacesSelfServiceAccess",
///     });
///
///     var exampleC = new Aws.Ec2.Subnet("example_c", new()
///     {
///         VpcId = exampleVpc.Id,
///         AvailabilityZone = "us-east-1c",
///         CidrBlock = "10.0.2.0/24",
///     });
///
///     var exampleD = new Aws.Ec2.Subnet("example_d", new()
///     {
///         VpcId = exampleVpc.Id,
///         AvailabilityZone = "us-east-1d",
///         CidrBlock = "10.0.3.0/24",
///     });
///
///     var example = new Aws.Workspaces.Directory("example", new()
///     {
///         DirectoryId = exampleDirectory.Id,
///         SubnetIds = new[]
///         {
///             exampleC.Id,
///             exampleD.Id,
///         },
///         Tags =
///         {
///             { "Example", "true" },
///         },
///         CertificateBasedAuthProperties = new Aws.Workspaces.Inputs.DirectoryCertificateBasedAuthPropertiesArgs
///         {
///             CertificateAuthorityArn = "arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012",
///             Status = "ENABLED",
///         },
///         SamlProperties = new Aws.Workspaces.Inputs.DirectorySamlPropertiesArgs
///         {
///             UserAccessUrl = "https://sso.example.com/",
///             Status = "ENABLED",
///         },
///         SelfServicePermissions = new Aws.Workspaces.Inputs.DirectorySelfServicePermissionsArgs
///         {
///             ChangeComputeType = true,
///             IncreaseVolumeSize = true,
///             RebuildWorkspace = true,
///             RestartWorkspace = true,
///             SwitchRunningMode = true,
///         },
///         WorkspaceAccessProperties = new Aws.Workspaces.Inputs.DirectoryWorkspaceAccessPropertiesArgs
///         {
///             DeviceTypeAndroid = "ALLOW",
///             DeviceTypeChromeos = "ALLOW",
///             DeviceTypeIos = "ALLOW",
///             DeviceTypeLinux = "DENY",
///             DeviceTypeOsx = "ALLOW",
///             DeviceTypeWeb = "DENY",
///             DeviceTypeWindows = "DENY",
///             DeviceTypeZeroclient = "DENY",
///         },
///         WorkspaceCreationProperties = new Aws.Workspaces.Inputs.DirectoryWorkspaceCreationPropertiesArgs
///         {
///             CustomSecurityGroupId = exampleAwsSecurityGroup.Id,
///             DefaultOu = "OU=AWS,DC=Workgroup,DC=Example,DC=com",
///             EnableInternetAccess = true,
///             EnableMaintenanceMode = true,
///             UserEnabledAsLocalAdministrator = true,
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             workspacesDefaultServiceAccess,
///             workspacesDefaultSelfServiceAccess,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleA, err := ec2.NewSubnet(ctx, "example_a", &ec2.SubnetArgs{
/// 			VpcId:            exampleVpc.ID(),
/// 			AvailabilityZone: pulumi.String("us-east-1a"),
/// 			CidrBlock:        pulumi.String("10.0.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleB, err := ec2.NewSubnet(ctx, "example_b", &ec2.SubnetArgs{
/// 			VpcId:            exampleVpc.ID(),
/// 			AvailabilityZone: pulumi.String("us-east-1b"),
/// 			CidrBlock:        pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDirectory, err := directoryservice.NewDirectory(ctx, "example", &directoryservice.DirectoryArgs{
/// 			Name:     pulumi.String("corp.example.com"),
/// 			Password: pulumi.String("#S1ncerely"),
/// 			Size:     pulumi.String("Small"),
/// 			VpcSettings: &directoryservice.DirectoryVpcSettingsArgs{
/// 				VpcId: exampleVpc.ID(),
/// 				SubnetIds: pulumi.StringArray{
/// 					exampleA.ID(),
/// 					exampleB.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspaces, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"workspaces.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspacesDefault, err := iam.NewRole(ctx, "workspaces_default", &iam.RoleArgs{
/// 			Name:             pulumi.String("workspaces_DefaultRole"),
/// 			AssumeRolePolicy: pulumi.String(workspaces.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspacesDefaultServiceAccess, err := iam.NewRolePolicyAttachment(ctx, "workspaces_default_service_access", &iam.RolePolicyAttachmentArgs{
/// 			Role:      workspacesDefault.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonWorkSpacesServiceAccess"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		workspacesDefaultSelfServiceAccess, err := iam.NewRolePolicyAttachment(ctx, "workspaces_default_self_service_access", &iam.RolePolicyAttachmentArgs{
/// 			Role:      workspacesDefault.Name,
/// 			PolicyArn: pulumi.String("arn:aws:iam::aws:policy/AmazonWorkSpacesSelfServiceAccess"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleC, err := ec2.NewSubnet(ctx, "example_c", &ec2.SubnetArgs{
/// 			VpcId:            exampleVpc.ID(),
/// 			AvailabilityZone: pulumi.String("us-east-1c"),
/// 			CidrBlock:        pulumi.String("10.0.2.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleD, err := ec2.NewSubnet(ctx, "example_d", &ec2.SubnetArgs{
/// 			VpcId:            exampleVpc.ID(),
/// 			AvailabilityZone: pulumi.String("us-east-1d"),
/// 			CidrBlock:        pulumi.String("10.0.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspaces.NewDirectory(ctx, "example", &workspaces.DirectoryArgs{
/// 			DirectoryId: exampleDirectory.ID(),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleC.ID(),
/// 				exampleD.ID(),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Example": pulumi.String("true"),
/// 			},
/// 			CertificateBasedAuthProperties: &workspaces.DirectoryCertificateBasedAuthPropertiesArgs{
/// 				CertificateAuthorityArn: pulumi.String("arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012"),
/// 				Status:                  pulumi.String("ENABLED"),
/// 			},
/// 			SamlProperties: &workspaces.DirectorySamlPropertiesArgs{
/// 				UserAccessUrl: pulumi.String("https://sso.example.com/"),
/// 				Status:        pulumi.String("ENABLED"),
/// 			},
/// 			SelfServicePermissions: &workspaces.DirectorySelfServicePermissionsArgs{
/// 				ChangeComputeType:  pulumi.Bool(true),
/// 				IncreaseVolumeSize: pulumi.Bool(true),
/// 				RebuildWorkspace:   pulumi.Bool(true),
/// 				RestartWorkspace:   pulumi.Bool(true),
/// 				SwitchRunningMode:  pulumi.Bool(true),
/// 			},
/// 			WorkspaceAccessProperties: &workspaces.DirectoryWorkspaceAccessPropertiesArgs{
/// 				DeviceTypeAndroid:    pulumi.String("ALLOW"),
/// 				DeviceTypeChromeos:   pulumi.String("ALLOW"),
/// 				DeviceTypeIos:        pulumi.String("ALLOW"),
/// 				DeviceTypeLinux:      pulumi.String("DENY"),
/// 				DeviceTypeOsx:        pulumi.String("ALLOW"),
/// 				DeviceTypeWeb:        pulumi.String("DENY"),
/// 				DeviceTypeWindows:    pulumi.String("DENY"),
/// 				DeviceTypeZeroclient: pulumi.String("DENY"),
/// 			},
/// 			WorkspaceCreationProperties: &workspaces.DirectoryWorkspaceCreationPropertiesArgs{
/// 				CustomSecurityGroupId:           pulumi.Any(exampleAwsSecurityGroup.Id),
/// 				DefaultOu:                       pulumi.String("OU=AWS,DC=Workgroup,DC=Example,DC=com"),
/// 				EnableInternetAccess:            pulumi.Bool(true),
/// 				EnableMaintenanceMode:           pulumi.Bool(true),
/// 				UserEnabledAsLocalAdministrator: pulumi.Bool(true),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			workspacesDefaultServiceAccess,
/// 			workspacesDefaultSelfServiceAccess,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.directoryservice.inputs.DirectoryVpcSettingsArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.RolePolicyAttachment;
/// import com.pulumi.aws.iam.RolePolicyAttachmentArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectoryCertificateBasedAuthPropertiesArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectorySamlPropertiesArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectorySelfServicePermissionsArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectoryWorkspaceAccessPropertiesArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectoryWorkspaceCreationPropertiesArgs;
/// import com.pulumi.resources.CustomResourceOptions;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleA = new Subnet("exampleA", SubnetArgs.builder()
///             .vpcId(exampleVpc.id())
///             .availabilityZone("us-east-1a")
///             .cidrBlock("10.0.0.0/24")
///             .build());
///
///         var exampleB = new Subnet("exampleB", SubnetArgs.builder()
///             .vpcId(exampleVpc.id())
///             .availabilityZone("us-east-1b")
///             .cidrBlock("10.0.1.0/24")
///             .build());
///
///         var exampleDirectory = new com.pulumi.aws.directoryservice.Directory("exampleDirectory", com.pulumi.aws.directoryservice.DirectoryArgs.builder()
///             .name("corp.example.com")
///             .password("#S1ncerely")
///             .size("Small")
///             .vpcSettings(DirectoryVpcSettingsArgs.builder()
///                 .vpcId(exampleVpc.id())
///                 .subnetIds(
///                     exampleA.id(),
///                     exampleB.id())
///                 .build())
///             .build());
///
///         final var workspaces = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("workspaces.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var workspacesDefault = new Role("workspacesDefault", RoleArgs.builder()
///             .name("workspaces_DefaultRole")
///             .assumeRolePolicy(workspaces.json())
///             .build());
///
///         var workspacesDefaultServiceAccess = new RolePolicyAttachment("workspacesDefaultServiceAccess", RolePolicyAttachmentArgs.builder()
///             .role(workspacesDefault.name())
///             .policyArn("arn:aws:iam::aws:policy/AmazonWorkSpacesServiceAccess")
///             .build());
///
///         var workspacesDefaultSelfServiceAccess = new RolePolicyAttachment("workspacesDefaultSelfServiceAccess", RolePolicyAttachmentArgs.builder()
///             .role(workspacesDefault.name())
///             .policyArn("arn:aws:iam::aws:policy/AmazonWorkSpacesSelfServiceAccess")
///             .build());
///
///         var exampleC = new Subnet("exampleC", SubnetArgs.builder()
///             .vpcId(exampleVpc.id())
///             .availabilityZone("us-east-1c")
///             .cidrBlock("10.0.2.0/24")
///             .build());
///
///         var exampleD = new Subnet("exampleD", SubnetArgs.builder()
///             .vpcId(exampleVpc.id())
///             .availabilityZone("us-east-1d")
///             .cidrBlock("10.0.3.0/24")
///             .build());
///
///         var example = new com.pulumi.aws.workspaces.Directory("example", com.pulumi.aws.workspaces.DirectoryArgs.builder()
///             .directoryId(exampleDirectory.id())
///             .subnetIds(
///                 exampleC.id(),
///                 exampleD.id())
///             .tags(Map.of("Example", "true"))
///             .certificateBasedAuthProperties(DirectoryCertificateBasedAuthPropertiesArgs.builder()
///                 .certificateAuthorityArn("arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012")
///                 .status("ENABLED")
///                 .build())
///             .samlProperties(DirectorySamlPropertiesArgs.builder()
///                 .userAccessUrl("https://sso.example.com/")
///                 .status("ENABLED")
///                 .build())
///             .selfServicePermissions(DirectorySelfServicePermissionsArgs.builder()
///                 .changeComputeType(true)
///                 .increaseVolumeSize(true)
///                 .rebuildWorkspace(true)
///                 .restartWorkspace(true)
///                 .switchRunningMode(true)
///                 .build())
///             .workspaceAccessProperties(DirectoryWorkspaceAccessPropertiesArgs.builder()
///                 .deviceTypeAndroid("ALLOW")
///                 .deviceTypeChromeos("ALLOW")
///                 .deviceTypeIos("ALLOW")
///                 .deviceTypeLinux("DENY")
///                 .deviceTypeOsx("ALLOW")
///                 .deviceTypeWeb("DENY")
///                 .deviceTypeWindows("DENY")
///                 .deviceTypeZeroclient("DENY")
///                 .build())
///             .workspaceCreationProperties(DirectoryWorkspaceCreationPropertiesArgs.builder()
///                 .customSecurityGroupId(exampleAwsSecurityGroup.id())
///                 .defaultOu("OU=AWS,DC=Workgroup,DC=Example,DC=com")
///                 .enableInternetAccess(true)
///                 .enableMaintenanceMode(true)
///                 .userEnabledAsLocalAdministrator(true)
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     workspacesDefaultServiceAccess,
///                     workspacesDefaultSelfServiceAccess)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspaces:Directory
///     properties:
///       directoryId: ${exampleDirectory.id}
///       subnetIds:
///         - ${exampleC.id}
///         - ${exampleD.id}
///       tags:
///         Example: true
///       certificateBasedAuthProperties:
///         certificateAuthorityArn: arn:aws:acm-pca:us-east-1:123456789012:certificate-authority/12345678-1234-1234-1234-123456789012
///         status: ENABLED
///       samlProperties:
///         userAccessUrl: https://sso.example.com/
///         status: ENABLED
///       selfServicePermissions:
///         changeComputeType: true
///         increaseVolumeSize: true
///         rebuildWorkspace: true
///         restartWorkspace: true
///         switchRunningMode: true
///       workspaceAccessProperties:
///         deviceTypeAndroid: ALLOW
///         deviceTypeChromeos: ALLOW
///         deviceTypeIos: ALLOW
///         deviceTypeLinux: DENY
///         deviceTypeOsx: ALLOW
///         deviceTypeWeb: DENY
///         deviceTypeWindows: DENY
///         deviceTypeZeroclient: DENY
///       workspaceCreationProperties:
///         customSecurityGroupId: ${exampleAwsSecurityGroup.id}
///         defaultOu: OU=AWS,DC=Workgroup,DC=Example,DC=com
///         enableInternetAccess: true
///         enableMaintenanceMode: true
///         userEnabledAsLocalAdministrator: true
///     options:
///       dependsOn:
///         - ${workspacesDefaultServiceAccess}
///         - ${workspacesDefaultSelfServiceAccess}
///   exampleDirectory:
///     type: aws:directoryservice:Directory
///     name: example
///     properties:
///       name: corp.example.com
///       password: '#S1ncerely'
///       size: Small
///       vpcSettings:
///         vpcId: ${exampleVpc.id}
///         subnetIds:
///           - ${exampleA.id}
///           - ${exampleB.id}
///   workspacesDefault:
///     type: aws:iam:Role
///     name: workspaces_default
///     properties:
///       name: workspaces_DefaultRole
///       assumeRolePolicy: ${workspaces.json}
///   workspacesDefaultServiceAccess:
///     type: aws:iam:RolePolicyAttachment
///     name: workspaces_default_service_access
///     properties:
///       role: ${workspacesDefault.name}
///       policyArn: arn:aws:iam::aws:policy/AmazonWorkSpacesServiceAccess
///   workspacesDefaultSelfServiceAccess:
///     type: aws:iam:RolePolicyAttachment
///     name: workspaces_default_self_service_access
///     properties:
///       role: ${workspacesDefault.name}
///       policyArn: arn:aws:iam::aws:policy/AmazonWorkSpacesSelfServiceAccess
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleA:
///     type: aws:ec2:Subnet
///     name: example_a
///     properties:
///       vpcId: ${exampleVpc.id}
///       availabilityZone: us-east-1a
///       cidrBlock: 10.0.0.0/24
///   exampleB:
///     type: aws:ec2:Subnet
///     name: example_b
///     properties:
///       vpcId: ${exampleVpc.id}
///       availabilityZone: us-east-1b
///       cidrBlock: 10.0.1.0/24
///   exampleC:
///     type: aws:ec2:Subnet
///     name: example_c
///     properties:
///       vpcId: ${exampleVpc.id}
///       availabilityZone: us-east-1c
///       cidrBlock: 10.0.2.0/24
///   exampleD:
///     type: aws:ec2:Subnet
///     name: example_d
///     properties:
///       vpcId: ${exampleVpc.id}
///       availabilityZone: us-east-1d
///       cidrBlock: 10.0.3.0/24
/// variables:
///   workspaces:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - workspaces.amazonaws.com
/// ```
///
///
/// ### WorkSpaces Pools
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.workspaces.Directory("example", {
///     subnetIds: [
///         exampleC.id,
///         exampleD.id,
///     ],
///     workspaceType: "POOLS",
///     workspaceDirectoryName: "Pool directory",
///     workspaceDirectoryDescription: "WorkSpaces Pools directory",
///     userIdentityType: "CUSTOMER_MANAGED",
///     activeDirectoryConfig: {
///         domainName: "example.internal",
///         serviceAccountSecretArn: exampleAwsSecretsmanagerSecret.arn,
///     },
///     workspaceAccessProperties: {
///         deviceTypeAndroid: "ALLOW",
///         deviceTypeChromeos: "ALLOW",
///         deviceTypeIos: "ALLOW",
///         deviceTypeLinux: "DENY",
///         deviceTypeOsx: "ALLOW",
///         deviceTypeWeb: "DENY",
///         deviceTypeWindows: "DENY",
///         deviceTypeZeroclient: "DENY",
///     },
///     workspaceCreationProperties: {
///         customSecurityGroupId: exampleAwsSecurityGroup.id,
///         defaultOu: "OU=AWS,DC=Workgroup,DC=Example,DC=com",
///         enableInternetAccess: true,
///     },
///     samlProperties: {
///         relayStateParameterName: "RelayState",
///         userAccessUrl: "https://sso.example.com/",
///         status: "ENABLED",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.workspaces.Directory("example",
///     subnet_ids=[
///         example_c["id"],
///         example_d["id"],
///     ],
///     workspace_type="POOLS",
///     workspace_directory_name="Pool directory",
///     workspace_directory_description="WorkSpaces Pools directory",
///     user_identity_type="CUSTOMER_MANAGED",
///     active_directory_config={
///         "domain_name": "example.internal",
///         "service_account_secret_arn": example_aws_secretsmanager_secret["arn"],
///     },
///     workspace_access_properties={
///         "device_type_android": "ALLOW",
///         "device_type_chromeos": "ALLOW",
///         "device_type_ios": "ALLOW",
///         "device_type_linux": "DENY",
///         "device_type_osx": "ALLOW",
///         "device_type_web": "DENY",
///         "device_type_windows": "DENY",
///         "device_type_zeroclient": "DENY",
///     },
///     workspace_creation_properties={
///         "custom_security_group_id": example_aws_security_group["id"],
///         "default_ou": "OU=AWS,DC=Workgroup,DC=Example,DC=com",
///         "enable_internet_access": True,
///     },
///     saml_properties={
///         "relay_state_parameter_name": "RelayState",
///         "user_access_url": "https://sso.example.com/",
///         "status": "ENABLED",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Workspaces.Directory("example", new()
///     {
///         SubnetIds = new[]
///         {
///             exampleC.Id,
///             exampleD.Id,
///         },
///         WorkspaceType = "POOLS",
///         WorkspaceDirectoryName = "Pool directory",
///         WorkspaceDirectoryDescription = "WorkSpaces Pools directory",
///         UserIdentityType = "CUSTOMER_MANAGED",
///         ActiveDirectoryConfig = new Aws.Workspaces.Inputs.DirectoryActiveDirectoryConfigArgs
///         {
///             DomainName = "example.internal",
///             ServiceAccountSecretArn = exampleAwsSecretsmanagerSecret.Arn,
///         },
///         WorkspaceAccessProperties = new Aws.Workspaces.Inputs.DirectoryWorkspaceAccessPropertiesArgs
///         {
///             DeviceTypeAndroid = "ALLOW",
///             DeviceTypeChromeos = "ALLOW",
///             DeviceTypeIos = "ALLOW",
///             DeviceTypeLinux = "DENY",
///             DeviceTypeOsx = "ALLOW",
///             DeviceTypeWeb = "DENY",
///             DeviceTypeWindows = "DENY",
///             DeviceTypeZeroclient = "DENY",
///         },
///         WorkspaceCreationProperties = new Aws.Workspaces.Inputs.DirectoryWorkspaceCreationPropertiesArgs
///         {
///             CustomSecurityGroupId = exampleAwsSecurityGroup.Id,
///             DefaultOu = "OU=AWS,DC=Workgroup,DC=Example,DC=com",
///             EnableInternetAccess = true,
///         },
///         SamlProperties = new Aws.Workspaces.Inputs.DirectorySamlPropertiesArgs
///         {
///             RelayStateParameterName = "RelayState",
///             UserAccessUrl = "https://sso.example.com/",
///             Status = "ENABLED",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := workspaces.NewDirectory(ctx, "example", &workspaces.DirectoryArgs{
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleC.Id,
/// 				exampleD.Id,
/// 			},
/// 			WorkspaceType:                 pulumi.String("POOLS"),
/// 			WorkspaceDirectoryName:        pulumi.String("Pool directory"),
/// 			WorkspaceDirectoryDescription: pulumi.String("WorkSpaces Pools directory"),
/// 			UserIdentityType:              pulumi.String("CUSTOMER_MANAGED"),
/// 			ActiveDirectoryConfig: &workspaces.DirectoryActiveDirectoryConfigArgs{
/// 				DomainName:              pulumi.String("example.internal"),
/// 				ServiceAccountSecretArn: pulumi.Any(exampleAwsSecretsmanagerSecret.Arn),
/// 			},
/// 			WorkspaceAccessProperties: &workspaces.DirectoryWorkspaceAccessPropertiesArgs{
/// 				DeviceTypeAndroid:    pulumi.String("ALLOW"),
/// 				DeviceTypeChromeos:   pulumi.String("ALLOW"),
/// 				DeviceTypeIos:        pulumi.String("ALLOW"),
/// 				DeviceTypeLinux:      pulumi.String("DENY"),
/// 				DeviceTypeOsx:        pulumi.String("ALLOW"),
/// 				DeviceTypeWeb:        pulumi.String("DENY"),
/// 				DeviceTypeWindows:    pulumi.String("DENY"),
/// 				DeviceTypeZeroclient: pulumi.String("DENY"),
/// 			},
/// 			WorkspaceCreationProperties: &workspaces.DirectoryWorkspaceCreationPropertiesArgs{
/// 				CustomSecurityGroupId: pulumi.Any(exampleAwsSecurityGroup.Id),
/// 				DefaultOu:             pulumi.String("OU=AWS,DC=Workgroup,DC=Example,DC=com"),
/// 				EnableInternetAccess:  pulumi.Bool(true),
/// 			},
/// 			SamlProperties: &workspaces.DirectorySamlPropertiesArgs{
/// 				RelayStateParameterName: pulumi.String("RelayState"),
/// 				UserAccessUrl:           pulumi.String("https://sso.example.com/"),
/// 				Status:                  pulumi.String("ENABLED"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.Directory;
/// import com.pulumi.aws.workspaces.DirectoryArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectoryActiveDirectoryConfigArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectoryWorkspaceAccessPropertiesArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectoryWorkspaceCreationPropertiesArgs;
/// import com.pulumi.aws.workspaces.inputs.DirectorySamlPropertiesArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Directory("example", DirectoryArgs.builder()
///             .subnetIds(
///                 exampleC.id(),
///                 exampleD.id())
///             .workspaceType("POOLS")
///             .workspaceDirectoryName("Pool directory")
///             .workspaceDirectoryDescription("WorkSpaces Pools directory")
///             .userIdentityType("CUSTOMER_MANAGED")
///             .activeDirectoryConfig(DirectoryActiveDirectoryConfigArgs.builder()
///                 .domainName("example.internal")
///                 .serviceAccountSecretArn(exampleAwsSecretsmanagerSecret.arn())
///                 .build())
///             .workspaceAccessProperties(DirectoryWorkspaceAccessPropertiesArgs.builder()
///                 .deviceTypeAndroid("ALLOW")
///                 .deviceTypeChromeos("ALLOW")
///                 .deviceTypeIos("ALLOW")
///                 .deviceTypeLinux("DENY")
///                 .deviceTypeOsx("ALLOW")
///                 .deviceTypeWeb("DENY")
///                 .deviceTypeWindows("DENY")
///                 .deviceTypeZeroclient("DENY")
///                 .build())
///             .workspaceCreationProperties(DirectoryWorkspaceCreationPropertiesArgs.builder()
///                 .customSecurityGroupId(exampleAwsSecurityGroup.id())
///                 .defaultOu("OU=AWS,DC=Workgroup,DC=Example,DC=com")
///                 .enableInternetAccess(true)
///                 .build())
///             .samlProperties(DirectorySamlPropertiesArgs.builder()
///                 .relayStateParameterName("RelayState")
///                 .userAccessUrl("https://sso.example.com/")
///                 .status("ENABLED")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspaces:Directory
///     properties:
///       subnetIds:
///         - ${exampleC.id}
///         - ${exampleD.id}
///       workspaceType: POOLS
///       workspaceDirectoryName: Pool directory
///       workspaceDirectoryDescription: WorkSpaces Pools directory
///       userIdentityType: CUSTOMER_MANAGED
///       activeDirectoryConfig:
///         domainName: example.internal
///         serviceAccountSecretArn: ${exampleAwsSecretsmanagerSecret.arn}
///       workspaceAccessProperties:
///         deviceTypeAndroid: ALLOW
///         deviceTypeChromeos: ALLOW
///         deviceTypeIos: ALLOW
///         deviceTypeLinux: DENY
///         deviceTypeOsx: ALLOW
///         deviceTypeWeb: DENY
///         deviceTypeWindows: DENY
///         deviceTypeZeroclient: DENY
///       workspaceCreationProperties:
///         customSecurityGroupId: ${exampleAwsSecurityGroup.id}
///         defaultOu: OU=AWS,DC=Workgroup,DC=Example,DC=com
///         enableInternetAccess: true
///       samlProperties:
///         relayStateParameterName: RelayState
///         userAccessUrl: https://sso.example.com/
///         status: ENABLED
/// ```
///
///
/// ### IP Groups
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleIpGroup = new aws.workspaces.IpGroup("example", {name: "example"});
/// const example = new aws.workspaces.Directory("example", {
///     directoryId: exampleAwsDirectoryServiceDirectory.id,
///     ipGroupIds: [exampleIpGroup.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_ip_group = aws.workspaces.IpGroup("example", name="example")
/// example = aws.workspaces.Directory("example",
///     directory_id=example_aws_directory_service_directory["id"],
///     ip_group_ids=[example_ip_group.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleIpGroup = new Aws.Workspaces.IpGroup("example", new()
///     {
///         Name = "example",
///     });
///
///     var example = new Aws.Workspaces.Directory("example", new()
///     {
///         DirectoryId = exampleAwsDirectoryServiceDirectory.Id,
///         IpGroupIds = new[]
///         {
///             exampleIpGroup.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/workspaces"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleIpGroup, err := workspaces.NewIpGroup(ctx, "example", &workspaces.IpGroupArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = workspaces.NewDirectory(ctx, "example", &workspaces.DirectoryArgs{
/// 			DirectoryId: pulumi.Any(exampleAwsDirectoryServiceDirectory.Id),
/// 			IpGroupIds: pulumi.StringArray{
/// 				exampleIpGroup.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.workspaces.IpGroup;
/// import com.pulumi.aws.workspaces.IpGroupArgs;
/// import com.pulumi.aws.workspaces.Directory;
/// import com.pulumi.aws.workspaces.DirectoryArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var exampleIpGroup = new IpGroup("exampleIpGroup", IpGroupArgs.builder()
///             .name("example")
///             .build());
///
///         var example = new Directory("example", DirectoryArgs.builder()
///             .directoryId(exampleAwsDirectoryServiceDirectory.id())
///             .ipGroupIds(exampleIpGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:workspaces:Directory
///     properties:
///       directoryId: ${exampleAwsDirectoryServiceDirectory.id}
///       ipGroupIds:
///         - ${exampleIpGroup.id}
///   exampleIpGroup:
///     type: aws:workspaces:IpGroup
///     name: example
///     properties:
///       name: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Workspaces directory using the directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:workspaces/directory:Directory main d-4444444444
/// ```
class Directory extends pulumi.CustomResource {
  /// Configuration for Active Directory integration when `workspace_type` is set to `POOLS`. Defined below.
  late final pulumi.Output<DirectoryActiveDirectoryConfig?> activeDirectoryConfig;
  /// The directory alias.
  late final pulumi.Output<String> alias;
  /// Configuration of certificate-based authentication (CBA) integration. Requires SAML authentication to be enabled. Defined below.
  late final pulumi.Output<DirectoryCertificateBasedAuthProperties> certificateBasedAuthProperties;
  /// The user name for the service account.
  late final pulumi.Output<String> customerUserName;
  /// The directory identifier for registration in WorkSpaces service.
  late final pulumi.Output<String> directoryId;
  /// The name of the directory.
  late final pulumi.Output<String> directoryName;
  /// The directory type.
  late final pulumi.Output<String> directoryType;
  /// The IP addresses of the DNS servers for the directory.
  late final pulumi.Output<List<String>> dnsIpAddresses;
  /// The identifier of the IAM role. This is the role that allows Amazon WorkSpaces to make calls to other services, such as Amazon EC2, on your behalf.
  late final pulumi.Output<String> iamRoleId;
  /// The identifiers of the IP access control groups associated with the directory.
  late final pulumi.Output<List<String>> ipGroupIds;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The registration code for the directory. This is the code that users enter in their Amazon WorkSpaces client application to connect to the directory.
  late final pulumi.Output<String> registrationCode;
  /// Configuration of SAML authentication integration. Defined below.
  late final pulumi.Output<DirectorySamlProperties> samlProperties;
  /// Permissions to enable or disable self-service capabilities when `workspace_type` is set to `PERSONAL`.. Defined below.
  late final pulumi.Output<DirectorySelfServicePermissions> selfServicePermissions;
  /// The identifiers of the subnets where the directory resides.
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags assigned to the WorkSpaces directory. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Tenancy of the WorkSpaces directory. Valid values are `DEDICATED` or `SHARED`.
  late final pulumi.Output<String> tenancy;
  /// Specifies the user identity type for the WorkSpaces directory. Valid values are `CUSTOMER_MANAGED`, `AWS_DIRECTORY_SERVICE`, `AWS_IAM_IDENTITY_CENTER`.
  ///
  /// > **Note:** When `workspace_type` is set to `POOLS`, the `directory_id` is automatically generated and cannot be manually set.
  late final pulumi.Output<String> userIdentityType;
  /// Specifies which devices and operating systems users can use to access their WorkSpaces. Defined below.
  late final pulumi.Output<DirectoryWorkspaceAccessProperties> workspaceAccessProperties;
  /// Default properties that are used for creating WorkSpaces. Defined below.
  late final pulumi.Output<DirectoryWorkspaceCreationProperties> workspaceCreationProperties;
  /// The description of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  late final pulumi.Output<String?> workspaceDirectoryDescription;
  /// The name of the WorkSpaces directory when `workspace_type` is set to `POOLS`.
  late final pulumi.Output<String?> workspaceDirectoryName;
  /// The identifier of the security group that is assigned to new WorkSpaces.
  late final pulumi.Output<String> workspaceSecurityGroupId;
  /// Specifies the type of WorkSpaces directory. Valid values are `PERSONAL` and `POOLS`. Default is `PERSONAL`.
  late final pulumi.Output<String?> workspaceType;

  /// Creates a new [Directory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Directory]. {@macro pulumi_workspaces_directory_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Directory(
    String name, {
    DirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:workspaces/directory:Directory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeDirectoryConfig = registerOutput<DirectoryActiveDirectoryConfig?>('activeDirectoryConfig');
    this.alias = registerOutput<String>('alias');
    this.certificateBasedAuthProperties = registerOutput<DirectoryCertificateBasedAuthProperties>('certificateBasedAuthProperties');
    this.customerUserName = registerOutput<String>('customerUserName');
    this.directoryId = registerOutput<String>('directoryId');
    this.directoryName = registerOutput<String>('directoryName');
    this.directoryType = registerOutput<String>('directoryType');
    this.dnsIpAddresses = registerOutput<List<String>>('dnsIpAddresses');
    this.iamRoleId = registerOutput<String>('iamRoleId');
    this.ipGroupIds = registerOutput<List<String>>('ipGroupIds');
    this.region = registerOutput<String>('region');
    this.registrationCode = registerOutput<String>('registrationCode');
    this.samlProperties = registerOutput<DirectorySamlProperties>('samlProperties');
    this.selfServicePermissions = registerOutput<DirectorySelfServicePermissions>('selfServicePermissions');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenancy = registerOutput<String>('tenancy');
    this.userIdentityType = registerOutput<String>('userIdentityType');
    this.workspaceAccessProperties = registerOutput<DirectoryWorkspaceAccessProperties>('workspaceAccessProperties');
    this.workspaceCreationProperties = registerOutput<DirectoryWorkspaceCreationProperties>('workspaceCreationProperties');
    this.workspaceDirectoryDescription = registerOutput<String?>('workspaceDirectoryDescription');
    this.workspaceDirectoryName = registerOutput<String?>('workspaceDirectoryName');
    this.workspaceSecurityGroupId = registerOutput<String>('workspaceSecurityGroupId');
    this.workspaceType = registerOutput<String?>('workspaceType');
  }
}
