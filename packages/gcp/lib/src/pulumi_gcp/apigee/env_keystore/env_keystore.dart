import 'package:pulumi/pulumi.dart';
import 'env_keystore_args.dart';

/// An `Environment KeyStore` in Apigee.
///
///
/// To get more information about EnvKeystore, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.keystores/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Import
///
/// EnvKeystore can be imported using any of these accepted formats:
///
/// * `{{env_id}}/keystores/{{name}}`
///
/// * `{{env_id}}/{{name}}`
///
/// When using the `pulumi import` command, EnvKeystore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/envKeystore:EnvKeystore default {{env_id}}/keystores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/envKeystore:EnvKeystore default {{env_id}}/{{name}}
/// ```
class EnvKeystore extends CustomResource {
  /// Aliases in this keystore.
  late final Output<List<String>> aliases;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final Output<String> envId;

  /// The name of the newly created keystore.
  late final Output<String> name;

  EnvKeystore(
    String name, {
    EnvKeystoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envKeystore:EnvKeystore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aliases = registerOutput<List<String>>('aliases');
    this.envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
  }
}
