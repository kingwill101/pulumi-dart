// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'response_policy_gkecluster_response2.dart';
import 'response_policy_network_response2.dart';

/// Result data returned by getResponsePolicy.
class GetResponsePolicyResult2 {
  /// User-provided description for this Response Policy.
  final String description;

  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  final List<ResponsePolicyGKEClusterResponse2> gkeClusters;
  final String kind;

  /// User labels.
  final Map<String, String> labels;

  /// List of network names specifying networks to which this policy is applied.
  final List<ResponsePolicyNetworkResponse2> networks;

  /// User assigned name for this Response Policy.
  final String responsePolicyName;

  GetResponsePolicyResult2({
    required this.description,
    required this.gkeClusters,
    required this.kind,
    required this.labels,
    required this.networks,
    required this.responsePolicyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['gkeClusters'] = Input.encodeList<ResponsePolicyGKEClusterResponse2,
        Map<String, dynamic>>(gkeClusters, (value) => value.toMap());
    map['kind'] = kind;
    map['labels'] = labels;
    map['networks'] =
        Input.encodeList<ResponsePolicyNetworkResponse2, Map<String, dynamic>>(
            networks, (value) => value.toMap());
    map['responsePolicyName'] = responsePolicyName;
    return map;
  }

  factory GetResponsePolicyResult2.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyResult2(
      description: map['description'] as String,
      gkeClusters: Input.decodeList<ResponsePolicyGKEClusterResponse2>(
          map['gkeClusters'],
          (value) => ResponsePolicyGKEClusterResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      networks: Input.decodeList<ResponsePolicyNetworkResponse2>(
          map['networks'],
          (value) => ResponsePolicyNetworkResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      responsePolicyName: map['responsePolicyName'] as String,
    );
  }
}
