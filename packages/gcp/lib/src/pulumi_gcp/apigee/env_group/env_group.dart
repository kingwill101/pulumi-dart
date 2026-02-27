import 'package:pulumi/pulumi.dart' as pulumi;
import 'env_group_args.dart';

/// An `Environment group` in Apigee.
///
///
/// To get more information about Envgroup, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.envgroups/create)
/// * How-to Guides
/// * [Creating an environment](https://cloud.google.com/apigee/docs/api-platform/get-started/create-environment)
///
/// ## Example Usage
///
/// ### Apigee Environment Group Basic
///
///
///
///
/// ## Import
///
/// Envgroup can be imported using any of these accepted formats:
///
/// * `{{org_id}}/envgroups/{{name}}`
///
/// * `{{org_id}}/{{name}}`
///
/// When using the `pulumi import` command, Envgroup can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/envGroup:EnvGroup default {{org_id}}/envgroups/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/envGroup:EnvGroup default {{org_id}}/{{name}}
/// ```
class EnvGroup extends pulumi.CustomResource {
  /// Hostnames of the environment group.
  late final pulumi.Output<List<String>?> hostnames;

  /// The resource ID of the environment group.
  late final pulumi.Output<String> name;

  /// The Apigee Organization associated with the Apigee environment group,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;

  EnvGroup(
    String name, {
    EnvGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/envGroup:EnvGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.hostnames = registerOutput<List<String>?>('hostnames');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
  }
}
