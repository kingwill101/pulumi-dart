import 'package:pulumi/pulumi.dart';
import 'response_policy_args.dart';
import 'response_policy_gkecluster_response2.dart';
import 'response_policy_network_response2.dart';

/// Creates a new Response Policy
/// Auto-naming is currently not supported for this resource.
class ResponsePolicy extends CustomResource {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  late final Output<String?> clientOperationId;

  /// User-provided description for this Response Policy.
  late final Output<String> description;

  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  late final Output<List<ResponsePolicyGKEClusterResponse2>> gkeClusters;
  late final Output<String> kind;

  /// User labels.
  late final Output<Map<String, String>> labels;

  /// List of network names specifying networks to which this policy is applied.
  late final Output<List<ResponsePolicyNetworkResponse2>> networks;
  late final Output<String> project;

  /// User assigned name for this Response Policy.
  late final Output<String> responsePolicyName;

  ResponsePolicy(
    String name, {
    ResponsePolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dns/v1beta2:ResponsePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clientOperationId = Output.createUnknown<String?>();
    this.description = Output.createUnknown<String>();
    this.gkeClusters =
        Output.createUnknown<List<ResponsePolicyGKEClusterResponse2>>();
    this.kind = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.networks =
        Output.createUnknown<List<ResponsePolicyNetworkResponse2>>();
    this.project = Output.createUnknown<String>();
    this.responsePolicyName = Output.createUnknown<String>();
  }
}
