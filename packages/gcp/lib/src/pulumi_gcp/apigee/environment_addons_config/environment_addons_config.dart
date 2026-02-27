import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_addons_config_args.dart';

/// Enable/Disable add-ons for an Apigee environment.
///
///
/// To get more information about EnvironmentAddonsConfig, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.addonsConfig/setAddonEnablement)
/// * How-to Guides
/// * [Enable Analytics Add-On](https://cloud.google.com/apigee/docs/api-platform/reference/manage-analytics-add-on)
///
/// ## Example Usage
///
/// ## Import
///
/// EnvironmentAddonsConfig can be imported using any of these accepted formats:
///
/// * `{{env_id}}`
///
/// When using the `pulumi import` command, EnvironmentAddonsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentAddonsConfig:EnvironmentAddonsConfig default {{env_id}}
/// ```
class EnvironmentAddonsConfig extends pulumi.CustomResource {
  /// Flag to enable/disable Analytics.
  late final pulumi.Output<bool?> analyticsEnabled;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final pulumi.Output<String> envId;

  EnvironmentAddonsConfig(
    String name, {
    EnvironmentAddonsConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentAddonsConfig:EnvironmentAddonsConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.analyticsEnabled = registerOutput<bool?>('analyticsEnabled');
    this.envId = registerOutput<String>('envId');
  }
}
