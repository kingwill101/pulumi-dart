import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';

/// Provides an AppConfig Deployment resource for an `aws.appconfig.Application` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appconfig.Deployment("example", {
///     applicationId: exampleAwsAppconfigApplication.id,
///     configurationProfileId: exampleAwsAppconfigConfigurationProfile.configurationProfileId,
///     configurationVersion: exampleAwsAppconfigHostedConfigurationVersion.versionNumber,
///     deploymentStrategyId: exampleAwsAppconfigDeploymentStrategy.id,
///     description: "My example deployment",
///     environmentId: exampleAwsAppconfigEnvironment.environmentId,
///     kmsKeyIdentifier: exampleAwsKmsKey.arn,
///     tags: {
///         Type: "AppConfig Deployment",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.Deployment("example",
///     application_id=example_aws_appconfig_application["id"],
///     configuration_profile_id=example_aws_appconfig_configuration_profile["configurationProfileId"],
///     configuration_version=example_aws_appconfig_hosted_configuration_version["versionNumber"],
///     deployment_strategy_id=example_aws_appconfig_deployment_strategy["id"],
///     description="My example deployment",
///     environment_id=example_aws_appconfig_environment["environmentId"],
///     kms_key_identifier=example_aws_kms_key["arn"],
///     tags={
///         "Type": "AppConfig Deployment",
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
///     var example = new Aws.AppConfig.Deployment("example", new()
///     {
///         ApplicationId = exampleAwsAppconfigApplication.Id,
///         ConfigurationProfileId = exampleAwsAppconfigConfigurationProfile.ConfigurationProfileId,
///         ConfigurationVersion = exampleAwsAppconfigHostedConfigurationVersion.VersionNumber,
///         DeploymentStrategyId = exampleAwsAppconfigDeploymentStrategy.Id,
///         Description = "My example deployment",
///         EnvironmentId = exampleAwsAppconfigEnvironment.EnvironmentId,
///         KmsKeyIdentifier = exampleAwsKmsKey.Arn,
///         Tags =
///         {
///             { "Type", "AppConfig Deployment" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appconfig"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appconfig.NewDeployment(ctx, "example", &appconfig.DeploymentArgs{
/// 			ApplicationId:          pulumi.Any(exampleAwsAppconfigApplication.Id),
/// 			ConfigurationProfileId: pulumi.Any(exampleAwsAppconfigConfigurationProfile.ConfigurationProfileId),
/// 			ConfigurationVersion:   pulumi.Any(exampleAwsAppconfigHostedConfigurationVersion.VersionNumber),
/// 			DeploymentStrategyId:   pulumi.Any(exampleAwsAppconfigDeploymentStrategy.Id),
/// 			Description:            pulumi.String("My example deployment"),
/// 			EnvironmentId:          pulumi.Any(exampleAwsAppconfigEnvironment.EnvironmentId),
/// 			KmsKeyIdentifier:       pulumi.Any(exampleAwsKmsKey.Arn),
/// 			Tags: pulumi.StringMap{
/// 				"Type": pulumi.String("AppConfig Deployment"),
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
/// import com.pulumi.aws.appconfig.Deployment;
/// import com.pulumi.aws.appconfig.DeploymentArgs;
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
///         var example = new Deployment("example", DeploymentArgs.builder()
///             .applicationId(exampleAwsAppconfigApplication.id())
///             .configurationProfileId(exampleAwsAppconfigConfigurationProfile.configurationProfileId())
///             .configurationVersion(exampleAwsAppconfigHostedConfigurationVersion.versionNumber())
///             .deploymentStrategyId(exampleAwsAppconfigDeploymentStrategy.id())
///             .description("My example deployment")
///             .environmentId(exampleAwsAppconfigEnvironment.environmentId())
///             .kmsKeyIdentifier(exampleAwsKmsKey.arn())
///             .tags(Map.of("Type", "AppConfig Deployment"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appconfig:Deployment
///     properties:
///       applicationId: ${exampleAwsAppconfigApplication.id}
///       configurationProfileId: ${exampleAwsAppconfigConfigurationProfile.configurationProfileId}
///       configurationVersion: ${exampleAwsAppconfigHostedConfigurationVersion.versionNumber}
///       deploymentStrategyId: ${exampleAwsAppconfigDeploymentStrategy.id}
///       description: My example deployment
///       environmentId: ${exampleAwsAppconfigEnvironment.environmentId}
///       kmsKeyIdentifier: ${exampleAwsKmsKey.arn}
///       tags:
///         Type: AppConfig Deployment
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Deployments using the application ID, environment ID, and deployment number separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/deployment:Deployment example 71abcde/11xxxxx/1
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// Application ID. Must be between 4 and 7 characters in length.
  late final pulumi.Output<String> applicationId;

  /// ARN of the AppConfig Deployment.
  late final pulumi.Output<String> arn;

  /// Configuration profile ID. Must be between 4 and 7 characters in length.
  late final pulumi.Output<String> configurationProfileId;

  /// Configuration version to deploy. Can be at most 1024 characters.
  late final pulumi.Output<String> configurationVersion;

  /// Deployment number.
  late final pulumi.Output<int> deploymentNumber;

  /// Deployment strategy ID or name of a predefined deployment strategy. See [Predefined Deployment Strategies](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-deployment-strategy.html#appconfig-creating-deployment-strategy-predefined) for more details.
  late final pulumi.Output<String> deploymentStrategyId;

  /// Description of the deployment. Can be at most 1024 characters.
  late final pulumi.Output<String?> description;

  /// Environment ID. Must be between 4 and 7 characters in length.
  late final pulumi.Output<String> environmentId;

  /// ARN of the KMS key used to encrypt configuration data.
  late final pulumi.Output<String> kmsKeyArn;

  /// The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  late final pulumi.Output<String?> kmsKeyIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// State of the deployment.
  late final pulumi.Output<String> state;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_appconfig_deployment_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:appconfig/deployment:Deployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.configurationProfileId = registerOutput<String>(
      'configurationProfileId',
    );
    this.configurationVersion = registerOutput<String>('configurationVersion');
    this.deploymentNumber = registerOutput<int>('deploymentNumber');
    this.deploymentStrategyId = registerOutput<String>('deploymentStrategyId');
    this.description = registerOutput<String?>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.kmsKeyArn = registerOutput<String>('kmsKeyArn');
    this.kmsKeyIdentifier = registerOutput<String?>('kmsKeyIdentifier');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
