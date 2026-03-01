import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_args.dart';
import 'domain_default_space_settings.dart';
import 'domain_default_user_settings.dart';
import 'domain_domain_settings.dart';
import 'domain_retention_policy.dart';
import 'domain_state.dart';

/// Provides a SageMaker AI Domain resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.iam.getPolicyDocument({
///     statements: [{
///         actions: ["sts:AssumeRole"],
///         principals: [{
///             type: "Service",
///             identifiers: ["sagemaker.amazonaws.com"],
///         }],
///     }],
/// });
/// const exampleRole = new aws.iam.Role("example", {
///     name: "example",
///     path: "/",
///     assumeRolePolicy: example.then(example => example.json),
/// });
/// const exampleDomain = new aws.sagemaker.Domain("example", {
///     domainName: "example",
///     authMode: "IAM",
///     vpcId: exampleAwsVpc.id,
///     subnetIds: [exampleAwsSubnet.id],
///     defaultUserSettings: {
///         executionRole: exampleRole.arn,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.iam.get_policy_document(statements=[{
///     "actions": ["sts:AssumeRole"],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["sagemaker.amazonaws.com"],
///     }],
/// }])
/// example_role = aws.iam.Role("example",
///     name="example",
///     path="/",
///     assume_role_policy=example.json)
/// example_domain = aws.sagemaker.Domain("example",
///     domain_name="example",
///     auth_mode="IAM",
///     vpc_id=example_aws_vpc["id"],
///     subnet_ids=[example_aws_subnet["id"]],
///     default_user_settings={
///         "execution_role": example_role.arn,
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
///     var example = Aws.Iam.GetPolicyDocument.Invoke(new()
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
///                             "sagemaker.amazonaws.com",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleRole = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         Path = "/",
///         AssumeRolePolicy = example.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     var exampleDomain = new Aws.Sagemaker.Domain("example", new()
///     {
///         DomainName = "example",
///         AuthMode = "IAM",
///         VpcId = exampleAwsVpc.Id,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         DefaultUserSettings = new Aws.Sagemaker.Inputs.DomainDefaultUserSettingsArgs
///         {
///             ExecutionRole = exampleRole.Arn,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := iam.GetPolicyDocument(ctx, &iam.GetPolicyDocumentArgs{
/// 			Statements: []iam.GetPolicyDocumentStatement{
/// 				{
/// 					Actions: []string{
/// 						"sts:AssumeRole",
/// 					},
/// 					Principals: []iam.GetPolicyDocumentStatementPrincipal{
/// 						{
/// 							Type: "Service",
/// 							Identifiers: []string{
/// 								"sagemaker.amazonaws.com",
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleRole, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			Path:             pulumi.String("/"),
/// 			AssumeRolePolicy: pulumi.String(example.Json),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewDomain(ctx, "example", &sagemaker.DomainArgs{
/// 			DomainName: pulumi.String("example"),
/// 			AuthMode:   pulumi.String("IAM"),
/// 			VpcId:      pulumi.Any(exampleAwsVpc.Id),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			DefaultUserSettings: &sagemaker.DomainDefaultUserSettingsArgs{
/// 				ExecutionRole: exampleRole.Arn,
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
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.sagemaker.Domain;
/// import com.pulumi.aws.sagemaker.DomainArgs;
/// import com.pulumi.aws.sagemaker.inputs.DomainDefaultUserSettingsArgs;
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
///         final var example = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .actions("sts:AssumeRole")
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("sagemaker.amazonaws.com")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleRole = new Role("exampleRole", RoleArgs.builder()
///             .name("example")
///             .path("/")
///             .assumeRolePolicy(example.json())
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .domainName("example")
///             .authMode("IAM")
///             .vpcId(exampleAwsVpc.id())
///             .subnetIds(exampleAwsSubnet.id())
///             .defaultUserSettings(DomainDefaultUserSettingsArgs.builder()
///                 .executionRole(exampleRole.arn())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDomain:
///     type: aws:sagemaker:Domain
///     name: example
///     properties:
///       domainName: example
///       authMode: IAM
///       vpcId: ${exampleAwsVpc.id}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       defaultUserSettings:
///         executionRole: ${exampleRole.arn}
///   exampleRole:
///     type: aws:iam:Role
///     name: example
///     properties:
///       name: example
///       path: /
///       assumeRolePolicy: ${example.json}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - actions:
///               - sts:AssumeRole
///             principals:
///               - type: Service
///                 identifiers:
///                   - sagemaker.amazonaws.com
/// ```
///
///
/// ### Using Custom Images
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Image("example", {
///     imageName: "example",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// const exampleAppImageConfig = new aws.sagemaker.AppImageConfig("example", {
///     appImageConfigName: "example",
///     kernelGatewayImageConfig: {
///         kernelSpecs: [{
///             name: "example",
///         }],
///     },
/// });
/// const exampleImageVersion = new aws.sagemaker.ImageVersion("example", {
///     imageName: example.id,
///     baseImage: "base-image",
/// });
/// const exampleDomain = new aws.sagemaker.Domain("example", {
///     domainName: "example",
///     authMode: "IAM",
///     vpcId: exampleAwsVpc.id,
///     subnetIds: [exampleAwsSubnet.id],
///     defaultUserSettings: {
///         executionRole: exampleAwsIamRole.arn,
///         kernelGatewayAppSettings: {
///             customImages: [{
///                 appImageConfigName: exampleAppImageConfig.appImageConfigName,
///                 imageName: exampleImageVersion.imageName,
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Image("example",
///     image_name="example",
///     role_arn=example_aws_iam_role["arn"])
/// example_app_image_config = aws.sagemaker.AppImageConfig("example",
///     app_image_config_name="example",
///     kernel_gateway_image_config={
///         "kernel_specs": [{
///             "name": "example",
///         }],
///     })
/// example_image_version = aws.sagemaker.ImageVersion("example",
///     image_name=example.id,
///     base_image="base-image")
/// example_domain = aws.sagemaker.Domain("example",
///     domain_name="example",
///     auth_mode="IAM",
///     vpc_id=example_aws_vpc["id"],
///     subnet_ids=[example_aws_subnet["id"]],
///     default_user_settings={
///         "execution_role": example_aws_iam_role["arn"],
///         "kernel_gateway_app_settings": {
///             "custom_images": [{
///                 "app_image_config_name": example_app_image_config.app_image_config_name,
///                 "image_name": example_image_version.image_name,
///             }],
///         },
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
///     var example = new Aws.Sagemaker.Image("example", new()
///     {
///         ImageName = "example",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
///     var exampleAppImageConfig = new Aws.Sagemaker.AppImageConfig("example", new()
///     {
///         AppImageConfigName = "example",
///         KernelGatewayImageConfig = new Aws.Sagemaker.Inputs.AppImageConfigKernelGatewayImageConfigArgs
///         {
///             KernelSpecs = new[]
///             {
///                 new Aws.Sagemaker.Inputs.AppImageConfigKernelGatewayImageConfigKernelSpecArgs
///                 {
///                     Name = "example",
///                 },
///             },
///         },
///     });
///
///     var exampleImageVersion = new Aws.Sagemaker.ImageVersion("example", new()
///     {
///         ImageName = example.Id,
///         BaseImage = "base-image",
///     });
///
///     var exampleDomain = new Aws.Sagemaker.Domain("example", new()
///     {
///         DomainName = "example",
///         AuthMode = "IAM",
///         VpcId = exampleAwsVpc.Id,
///         SubnetIds = new[]
///         {
///             exampleAwsSubnet.Id,
///         },
///         DefaultUserSettings = new Aws.Sagemaker.Inputs.DomainDefaultUserSettingsArgs
///         {
///             ExecutionRole = exampleAwsIamRole.Arn,
///             KernelGatewayAppSettings = new Aws.Sagemaker.Inputs.DomainDefaultUserSettingsKernelGatewayAppSettingsArgs
///             {
///                 CustomImages = new[]
///                 {
///                     new Aws.Sagemaker.Inputs.DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImageArgs
///                     {
///                         AppImageConfigName = exampleAppImageConfig.AppImageConfigName,
///                         ImageName = exampleImageVersion.ImageName,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := sagemaker.NewImage(ctx, "example", &sagemaker.ImageArgs{
/// 			ImageName: pulumi.String("example"),
/// 			RoleArn:   pulumi.Any(exampleAwsIamRole.Arn),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAppImageConfig, err := sagemaker.NewAppImageConfig(ctx, "example", &sagemaker.AppImageConfigArgs{
/// 			AppImageConfigName: pulumi.String("example"),
/// 			KernelGatewayImageConfig: &sagemaker.AppImageConfigKernelGatewayImageConfigArgs{
/// 				KernelSpecs: sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArray{
/// 					&sagemaker.AppImageConfigKernelGatewayImageConfigKernelSpecArgs{
/// 						Name: pulumi.String("example"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleImageVersion, err := sagemaker.NewImageVersion(ctx, "example", &sagemaker.ImageVersionArgs{
/// 			ImageName: example.ID(),
/// 			BaseImage: pulumi.String("base-image"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewDomain(ctx, "example", &sagemaker.DomainArgs{
/// 			DomainName: pulumi.String("example"),
/// 			AuthMode:   pulumi.String("IAM"),
/// 			VpcId:      pulumi.Any(exampleAwsVpc.Id),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleAwsSubnet.Id,
/// 			},
/// 			DefaultUserSettings: &sagemaker.DomainDefaultUserSettingsArgs{
/// 				ExecutionRole: pulumi.Any(exampleAwsIamRole.Arn),
/// 				KernelGatewayAppSettings: &sagemaker.DomainDefaultUserSettingsKernelGatewayAppSettingsArgs{
/// 					CustomImages: sagemaker.DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImageArray{
/// 						&sagemaker.DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImageArgs{
/// 							AppImageConfigName: exampleAppImageConfig.AppImageConfigName,
/// 							ImageName:          exampleImageVersion.ImageName,
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.aws.sagemaker.Image;
/// import com.pulumi.aws.sagemaker.ImageArgs;
/// import com.pulumi.aws.sagemaker.AppImageConfig;
/// import com.pulumi.aws.sagemaker.AppImageConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.AppImageConfigKernelGatewayImageConfigArgs;
/// import com.pulumi.aws.sagemaker.ImageVersion;
/// import com.pulumi.aws.sagemaker.ImageVersionArgs;
/// import com.pulumi.aws.sagemaker.Domain;
/// import com.pulumi.aws.sagemaker.DomainArgs;
/// import com.pulumi.aws.sagemaker.inputs.DomainDefaultUserSettingsArgs;
/// import com.pulumi.aws.sagemaker.inputs.DomainDefaultUserSettingsKernelGatewayAppSettingsArgs;
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
///         var example = new Image("example", ImageArgs.builder()
///             .imageName("example")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///         var exampleAppImageConfig = new AppImageConfig("exampleAppImageConfig", AppImageConfigArgs.builder()
///             .appImageConfigName("example")
///             .kernelGatewayImageConfig(AppImageConfigKernelGatewayImageConfigArgs.builder()
///                 .kernelSpecs(AppImageConfigKernelGatewayImageConfigKernelSpecArgs.builder()
///                     .name("example")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleImageVersion = new ImageVersion("exampleImageVersion", ImageVersionArgs.builder()
///             .imageName(example.id())
///             .baseImage("base-image")
///             .build());
///
///         var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
///             .domainName("example")
///             .authMode("IAM")
///             .vpcId(exampleAwsVpc.id())
///             .subnetIds(exampleAwsSubnet.id())
///             .defaultUserSettings(DomainDefaultUserSettingsArgs.builder()
///                 .executionRole(exampleAwsIamRole.arn())
///                 .kernelGatewayAppSettings(DomainDefaultUserSettingsKernelGatewayAppSettingsArgs.builder()
///                     .customImages(DomainDefaultUserSettingsKernelGatewayAppSettingsCustomImageArgs.builder()
///                         .appImageConfigName(exampleAppImageConfig.appImageConfigName())
///                         .imageName(exampleImageVersion.imageName())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Image
///     properties:
///       imageName: example
///       roleArn: ${exampleAwsIamRole.arn}
///   exampleAppImageConfig:
///     type: aws:sagemaker:AppImageConfig
///     name: example
///     properties:
///       appImageConfigName: example
///       kernelGatewayImageConfig:
///         kernelSpecs:
///           - name: example
///   exampleImageVersion:
///     type: aws:sagemaker:ImageVersion
///     name: example
///     properties:
///       imageName: ${example.id}
///       baseImage: base-image
///   exampleDomain:
///     type: aws:sagemaker:Domain
///     name: example
///     properties:
///       domainName: example
///       authMode: IAM
///       vpcId: ${exampleAwsVpc.id}
///       subnetIds:
///         - ${exampleAwsSubnet.id}
///       defaultUserSettings:
///         executionRole: ${exampleAwsIamRole.arn}
///         kernelGatewayAppSettings:
///           customImages:
///             - appImageConfigName: ${exampleAppImageConfig.appImageConfigName}
///               imageName: ${exampleImageVersion.imageName}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Domains using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/domain:Domain test_domain d-8jgsjtilstu8
/// ```
class Domain extends pulumi.CustomResource {
  /// Specifies the VPC used for non-EFS traffic. The default value is `PublicInternetOnly`. Valid values are `PublicInternetOnly` and `VpcOnly`.
  late final pulumi.Output<String?> appNetworkAccessType;
  /// The entity that creates and manages the required security groups for inter-app communication in `VPCOnly` mode. Valid values are `Service` and `Customer`.
  late final pulumi.Output<String?> appSecurityGroupManagement;
  /// The Amazon Resource Name (ARN) assigned by AWS to this Domain.
  late final pulumi.Output<String> arn;
  /// The mode of authentication that members use to access the domain. Valid values are `IAM` and `SSO`.
  late final pulumi.Output<String> authMode;
  /// The default space settings. See `default_space_settings` Block below.
  late final pulumi.Output<DomainDefaultSpaceSettings?> defaultSpaceSettings;
  /// The default user settings. See `default_user_settings` Block below.
  late final pulumi.Output<DomainDefaultUserSettings> defaultUserSettings;
  /// The domain name.
  late final pulumi.Output<String> domainName;
  /// The domain settings. See `domain_settings` Block below.
  late final pulumi.Output<DomainDomainSettings?> domainSettings;
  /// The ID of the Amazon Elastic File System (EFS) managed by this Domain.
  late final pulumi.Output<String> homeEfsFileSystemId;
  /// The AWS KMS customer managed CMK used to encrypt the EFS volume attached to the domain.
  late final pulumi.Output<String?> kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The retention policy for this domain, which specifies whether resources will be retained after the Domain is deleted. By default, all resources are retained. See `retention_policy` Block below.
  late final pulumi.Output<DomainRetentionPolicy?> retentionPolicy;
  /// The ID of the security group that authorizes traffic between the RSessionGateway apps and the RStudioServerPro app.
  late final pulumi.Output<String> securityGroupIdForDomainBoundary;
  /// The ARN of the application managed by SageMaker AI in IAM Identity Center. This value is only returned for domains created after September 19, 2023.
  late final pulumi.Output<String> singleSignOnApplicationArn;
  /// The SSO managed application instance ID.
  late final pulumi.Output<String> singleSignOnManagedApplicationInstanceId;
  /// The VPC subnets that Studio uses for communication.
  late final pulumi.Output<List<String>> subnetIds;
  /// Indicates whether custom tag propagation is supported for the domain. Defaults to `DISABLED`. Valid values are: `ENABLED` and `DISABLED`.
  late final pulumi.Output<String?> tagPropagation;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The domain's URL.
  late final pulumi.Output<String> url;
  /// The ID of the Amazon Virtual Private Cloud (VPC) that Studio uses for communication.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;

  /// Creates a new [Domain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Domain]. {@macro pulumi_sagemaker_domain_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Domain(
    String name, {
    DomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appNetworkAccessType = registerOutput<String?>('appNetworkAccessType');
    this.appSecurityGroupManagement = registerOutput<String?>('appSecurityGroupManagement');
    this.arn = registerOutput<String>('arn');
    this.authMode = registerOutput<String>('authMode');
    this.defaultSpaceSettings = registerOutput<DomainDefaultSpaceSettings?>('defaultSpaceSettings');
    this.defaultUserSettings = registerOutput<DomainDefaultUserSettings>('defaultUserSettings');
    this.domainName = registerOutput<String>('domainName');
    this.domainSettings = registerOutput<DomainDomainSettings?>('domainSettings');
    this.homeEfsFileSystemId = registerOutput<String>('homeEfsFileSystemId');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.retentionPolicy = registerOutput<DomainRetentionPolicy?>('retentionPolicy');
    this.securityGroupIdForDomainBoundary = registerOutput<String>('securityGroupIdForDomainBoundary');
    this.singleSignOnApplicationArn = registerOutput<String>('singleSignOnApplicationArn');
    this.singleSignOnManagedApplicationInstanceId = registerOutput<String>('singleSignOnManagedApplicationInstanceId');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tagPropagation = registerOutput<String?>('tagPropagation');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [Domain] resource's state with the given [name] and [id].
  static Domain get(
    String name,
    pulumi.Input<String> id, {
    DomainState? state,
  }) {
    return Domain._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Domain._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/domain:Domain',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.appNetworkAccessType = registerOutput<String?>('appNetworkAccessType');
    this.appSecurityGroupManagement = registerOutput<String?>('appSecurityGroupManagement');
    this.arn = registerOutput<String>('arn');
    this.authMode = registerOutput<String>('authMode');
    this.defaultSpaceSettings = registerOutput<DomainDefaultSpaceSettings?>('defaultSpaceSettings');
    this.defaultUserSettings = registerOutput<DomainDefaultUserSettings>('defaultUserSettings');
    this.domainName = registerOutput<String>('domainName');
    this.domainSettings = registerOutput<DomainDomainSettings?>('domainSettings');
    this.homeEfsFileSystemId = registerOutput<String>('homeEfsFileSystemId');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.retentionPolicy = registerOutput<DomainRetentionPolicy?>('retentionPolicy');
    this.securityGroupIdForDomainBoundary = registerOutput<String>('securityGroupIdForDomainBoundary');
    this.singleSignOnApplicationArn = registerOutput<String>('singleSignOnApplicationArn');
    this.singleSignOnManagedApplicationInstanceId = registerOutput<String>('singleSignOnManagedApplicationInstanceId');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tagPropagation = registerOutput<String?>('tagPropagation');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
