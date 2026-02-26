// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../response_policy_gke_cluster/response_policy_gke_cluster.dart';
import '../response_policy_network/response_policy_network.dart';

/// The set of arguments for ResponsePolicy.
class ResponsePolicyArgs {
  /// The description of the response policy, such as `My new response policy`.
  final Input<String>? description;

  /// The list of Google Kubernetes Engine clusters that can see this zone.
  /// Structure is documented below.
  final Input<List<ResponsePolicyGkeCluster>>? gkeClusters;

  /// The list of network names specifying networks to which this policy is applied.
  /// Structure is documented below.
  final Input<List<ResponsePolicyNetwork>>? networks;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The user assigned name for this Response Policy, such as <span pulumi-lang-nodejs="`myresponsepolicy`" pulumi-lang-dotnet="`Myresponsepolicy`" pulumi-lang-go="`myresponsepolicy`" pulumi-lang-python="`myresponsepolicy`" pulumi-lang-yaml="`myresponsepolicy`" pulumi-lang-java="`myresponsepolicy`">`myresponsepolicy`</span>.
  final Input<String> responsePolicyName;

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
      map['gkeClusters'] = Input.mapOptionalInputValue<
              List<ResponsePolicyGkeCluster>, List<Map<String, dynamic>>>(
          gkeClustersValue,
          (value) =>
              Input.encodeList<ResponsePolicyGkeCluster, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = Input.mapOptionalInputValue<List<ResponsePolicyNetwork>,
              List<Map<String, dynamic>>>(
          networksValue,
          (value) =>
              Input.encodeList<ResponsePolicyNetwork, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
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
      description: Input.asOptionalInput<String>(map['description']),
      gkeClusters: Input.asOptionalInput<List<ResponsePolicyGkeCluster>>(
          map['gkeClusters']),
      networks:
          Input.asOptionalInput<List<ResponsePolicyNetwork>>(map['networks']),
      project: Input.asOptionalInput<String>(map['project']),
      responsePolicyName: Input.asInput<String>(map['responsePolicyName']),
    );
  }
}
