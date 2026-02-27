import 'package:pulumi/pulumi.dart' as pulumi;
import '../response_policy_gke_cluster/response_policy_gke_cluster.dart';
import '../response_policy_network/response_policy_network.dart';
import 'response_policy_args.dart';

/// A Response Policy is a collection of selectors that apply to queries
/// made against one or more Virtual Private Cloud networks.
///
///
///
/// ## Example Usage
///
/// ### Dns Response Policy Basic
///
///
///
///
/// ## Import
///
/// ResponsePolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/responsePolicies/{{response_policy_name}}`
///
/// * `{{project}}/{{response_policy_name}}`
///
/// * `{{response_policy_name}}`
///
/// When using the `pulumi import` command, ResponsePolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicy:ResponsePolicy default projects/{{project}}/responsePolicies/{{response_policy_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicy:ResponsePolicy default {{project}}/{{response_policy_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dns/responsePolicy:ResponsePolicy default {{response_policy_name}}
/// ```
class ResponsePolicy extends pulumi.CustomResource {
  /// The description of the response policy, such as `My new response policy`.
  late final pulumi.Output<String?> description;

  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  late final pulumi.Output<List<ResponsePolicyGkeCluster>?> gkeClusters;

  /// The list of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  late final pulumi.Output<List<ResponsePolicyNetwork>?> networks;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The user assigned name for this Response Policy, such as `myresponsepolicy`.
  late final pulumi.Output<String> responsePolicyName;

  ResponsePolicy(
    String name, {
    ResponsePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dns/responsePolicy:ResponsePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.gkeClusters =
        registerOutput<List<ResponsePolicyGkeCluster>?>('gkeClusters');
    this.networks = registerOutput<List<ResponsePolicyNetwork>?>('networks');
    this.project = registerOutput<String>('project');
    this.responsePolicyName = registerOutput<String>('responsePolicyName');
  }
}
