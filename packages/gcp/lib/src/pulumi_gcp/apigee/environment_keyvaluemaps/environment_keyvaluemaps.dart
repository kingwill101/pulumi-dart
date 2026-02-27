import 'package:pulumi/pulumi.dart';
import 'environment_keyvaluemaps_args.dart';

/// Collection of key/value string pairs.
///
///
/// To get more information about EnvironmentKeyvaluemaps, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keyvaluemaps/create)
/// * How-to Guides
/// * [Using key value maps](https://cloud.google.com/apigee/docs/api-platform/cache/key-value-maps)
///
/// ## Example Usage
///
/// ### Apigee Environment Keyvaluemaps Basic
///
///
///
///
/// ## Import
///
/// EnvironmentKeyvaluemaps can be imported using any of these accepted formats:
///
/// * `{{env_id}}/keyvaluemaps/{{name}}`
///
/// * `{{env_id}}/{{name}}`
///
/// When using the `pulumi import` command, EnvironmentKeyvaluemaps can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentKeyvaluemaps:EnvironmentKeyvaluemaps default {{env_id}}/keyvaluemaps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentKeyvaluemaps:EnvironmentKeyvaluemaps default {{env_id}}/{{name}}
/// ```
class EnvironmentKeyvaluemaps extends CustomResource {
  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final Output<String> envId;

  /// Required. ID of the key value map.
  late final Output<String> name;

  EnvironmentKeyvaluemaps(
    String name, {
    EnvironmentKeyvaluemapsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentKeyvaluemaps:EnvironmentKeyvaluemaps',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
  }
}
