import 'package:pulumi/pulumi.dart';
import 'deployment_args3.dart';

/// Provides an AppConfig Deployment resource for an `aws.appconfig.Application` resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import AppConfig Deployments using the application ID, environment ID, and deployment number separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appconfig/deployment:Deployment example 71abcde/11xxxxx/1
/// ```
class DeploymentType3 extends CustomResource {
  /// Application ID. Must be between 4 and 7 characters in length.
  late final Output<String> applicationId;

  /// ARN of the AppConfig Deployment.
  late final Output<String> arn;

  /// Configuration profile ID. Must be between 4 and 7 characters in length.
  late final Output<String> configurationProfileId;

  /// Configuration version to deploy. Can be at most 1024 characters.
  late final Output<String> configurationVersion;

  /// Deployment number.
  late final Output<int> deploymentNumber;

  /// Deployment strategy ID or name of a predefined deployment strategy. See [Predefined Deployment Strategies](https://docs.aws.amazon.com/appconfig/latest/userguide/appconfig-creating-deployment-strategy.html#appconfig-creating-deployment-strategy-predefined) for more details.
  late final Output<String> deploymentStrategyId;

  /// Description of the deployment. Can be at most 1024 characters.
  late final Output<String?> description;

  /// Environment ID. Must be between 4 and 7 characters in length.
  late final Output<String> environmentId;

  /// ARN of the KMS key used to encrypt configuration data.
  late final Output<String> kmsKeyArn;

  /// The KMS key identifier (key ID, key alias, or key ARN). AppConfig uses this to encrypt the configuration data using a customer managed key.
  late final Output<String?> kmsKeyIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the deployment.
  late final Output<String> state;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  DeploymentType3(
    String name, {
    DeploymentArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appconfig/deployment:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.applicationId = registerOutput<String>('applicationId');
    this.arn = registerOutput<String>('arn');
    this.configurationProfileId =
        registerOutput<String>('configurationProfileId');
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
