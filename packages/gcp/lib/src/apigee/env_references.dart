import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_references_args.dart';

/// An `Environment Reference` in Apigee.
///
///
/// To get more information about EnvReferences, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.references/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Import
///
/// EnvReferences can be imported using any of these accepted formats:
///
/// * `{{env_id}}/references/{{name}}`
///
/// * `{{env_id}}/{{name}}`
///
/// When using the `pulumi import` command, EnvReferences can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/envReferences:EnvReferences default {{env_id}}/references/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/envReferences:EnvReferences default {{env_id}}/{{name}}
/// ```
class EnvReferences extends pulumi.CustomResource {
  /// Optional. A human-readable description of this reference.
  late final pulumi.Output<String?> description;

  /// The Apigee environment group associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/environments/{{env_name}}`.
  late final pulumi.Output<String> envId;

  /// Required. The resource id of this reference. Values must match the regular expression [\w\s-.]+.
  late final pulumi.Output<String> name;

  /// Required. The id of the resource to which this reference refers. Must be the id of a resource that exists in the parent environment and is of the given resourceType.
  late final pulumi.Output<String> refers;

  /// The type of resource referred to by this reference. Valid values are 'KeyStore' or 'TrustStore'.
  late final pulumi.Output<String> resourceType;

  /// Creates a new [EnvReferences].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvReferences]. {@macro pulumi_apigee_env_references_env_references_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvReferences(
    String name, {
    EnvReferencesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:apigee/envReferences:EnvReferences',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.description = registerOutput<String?>('description');
    this.envId = registerOutput<String>('envId');
    this.name = registerOutput<String>('name');
    this.refers = registerOutput<String>('refers');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
