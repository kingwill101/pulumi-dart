// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../response_policy_gke_cluster/response_policy_gke_cluster.dart';
import '../response_policy_network/response_policy_network.dart';

/// The set of arguments for ResponsePolicy.
class ResponsePolicyArgs {
  /// The description of the response policy, such as `My new response policy`.
  final pulumi.Input<String>? description;

  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  final pulumi.Input<List<ResponsePolicyGkeCluster>>? gkeClusters;

  /// The list of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  final pulumi.Input<List<ResponsePolicyNetwork>>? networks;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The user assigned name for this Response Policy, such as `myresponsepolicy`.
  final pulumi.Input<String> responsePolicyName;

  ResponsePolicyArgs({
    this.description,
    this.gkeClusters,
    this.networks,
    this.project,
    required this.responsePolicyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gkeClustersValue = gkeClusters;
    if (gkeClustersValue != null) {
      map['gkeClusters'] = pulumi.Input.mapOptionalInputValue<
              List<ResponsePolicyGkeCluster>, List<Map<String, dynamic>>>(
          gkeClustersValue,
          (value) => pulumi.Input.encodeList<ResponsePolicyGkeCluster,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = pulumi.Input.mapOptionalInputValue<
              List<ResponsePolicyNetwork>, List<Map<String, dynamic>>>(
          networksValue,
          (value) => pulumi.Input.encodeList<ResponsePolicyNetwork,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['responsePolicyName'] = responsePolicyName;
    return map;
  }

  factory ResponsePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      gkeClusters: pulumi.Input.asOptionalInput<List<ResponsePolicyGkeCluster>>(
          map['gkeClusters']),
      networks: pulumi.Input.asOptionalInput<List<ResponsePolicyNetwork>>(
          map['networks']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      responsePolicyName:
          pulumi.Input.asInput<String>(map['responsePolicyName']),
    );
  }
}
