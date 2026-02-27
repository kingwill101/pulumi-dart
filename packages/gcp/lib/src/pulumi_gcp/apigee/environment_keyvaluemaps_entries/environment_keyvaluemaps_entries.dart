import 'package:pulumi/pulumi.dart';
import 'environment_keyvaluemaps_entries_args.dart';

/// Creates key value entries in a key value map scoped to an environment.
///
///
/// To get more information about EnvironmentKeyvaluemapsEntries, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.keyvaluemaps.entries/create)
/// * How-to Guides
/// * [Using key value maps](https://cloud.google.com/apigee/docs/api-platform/cache/key-value-maps)
///
/// ## Example Usage
///
/// ### Apigee Environment Keyvaluemaps Entries Basic
///
///
///
///
/// ## Import
///
/// EnvironmentKeyvaluemapsEntries can be imported using any of these accepted formats:
///
/// * `{{env_keyvaluemap_id}}/entries/{{name}}`
///
/// * `{{env_keyvaluemap_id}}/{{name}}`
///
/// When using the `pulumi import` command, EnvironmentKeyvaluemapsEntries can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentKeyvaluemapsEntries:EnvironmentKeyvaluemapsEntries default {{env_keyvaluemap_id}}/entries/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentKeyvaluemapsEntries:EnvironmentKeyvaluemapsEntries default {{env_keyvaluemap_id}}/{{name}}
/// ```
class EnvironmentKeyvaluemapsEntries extends CustomResource {
  /// The Apigee environment keyvalumaps Id associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}/keyvaluemaps/{{keyvaluemap_name}}`.
  late final Output<String> envKeyvaluemapId;

  /// Required. Resource URI that can be used to identify the scope of the key value map entries.
  late final Output<String> name;

  /// Required. Data or payload that is being retrieved and associated with the unique key.
  late final Output<String> value;

  EnvironmentKeyvaluemapsEntries(
    String name, {
    EnvironmentKeyvaluemapsEntriesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentKeyvaluemapsEntries:EnvironmentKeyvaluemapsEntries',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.envKeyvaluemapId = registerOutput<String>('envKeyvaluemapId');
    this.name = registerOutput<String>('name');
    this.value = registerOutput<String>('value');
  }
}
