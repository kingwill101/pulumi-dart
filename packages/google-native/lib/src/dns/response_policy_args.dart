// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_gkecluster_dns_v1beta2.dart';
import 'response_policy_network_dns_v1beta2.dart';

/// {@template pulumi_dns_v1beta2_response_policy_args_doc}
/// The set of arguments for ResponsePolicy.
/// {@endtemplate}
/// {@macro pulumi_dns_v1beta2_response_policy_args_doc}
class ResponsePolicyArgs {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  /// User-provided description for this Response Policy.
  final pulumi.Input<String>? description;
  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  final pulumi.Input<List<ResponsePolicyGKEClusterDnsV1beta2>>? gkeClusters;
  final pulumi.Input<String>? kind;
  /// User labels.
  final pulumi.Input<Map<String, String>>? labels;
  /// List of network names specifying networks to which this policy is applied.
  final pulumi.Input<List<ResponsePolicyNetworkDnsV1beta2>>? networks;
  final pulumi.Input<String>? project;
  /// User assigned name for this Response Policy.
  final pulumi.Input<String>? responsePolicyName;

  /// Creates a new [ResponsePolicyArgs].
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [description] User-provided description for this Response Policy.
  /// [gkeClusters] The list of Google Kubernetes Engine clusters to which this response policy is applied.
  /// [kind] Optional.
  /// [labels] User labels.
  /// [networks] List of network names specifying networks to which this policy is applied.
  /// [project] Optional.
  /// [responsePolicyName] User assigned name for this Response Policy.
  ResponsePolicyArgs({
    String? clientOperationId,
    String? description,
    List<ResponsePolicyGKEClusterDnsV1beta2>? gkeClusters,
    String? kind,
    Map<String, String>? labels,
    List<ResponsePolicyNetworkDnsV1beta2>? networks,
    String? project,
    String? responsePolicyName,
  }) :
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      description = pulumi.Input.asOptionalInput<String>(description),
      gkeClusters = pulumi.Input.asOptionalInput<List<ResponsePolicyGKEClusterDnsV1beta2>>(gkeClusters),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      networks = pulumi.Input.asOptionalInput<List<ResponsePolicyNetworkDnsV1beta2>>(networks),
      project = pulumi.Input.asOptionalInput<String>(project),
      responsePolicyName = pulumi.Input.asOptionalInput<String>(responsePolicyName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'description': ?description,
      'gkeClusters': ?pulumi.Input.mapOptionalInputValue<List<ResponsePolicyGKEClusterDnsV1beta2>, List<Map<String, dynamic>>>(gkeClusters, (value) => pulumi.Input.encodeList<ResponsePolicyGKEClusterDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': ?kind,
      'labels': ?labels,
      'networks': ?pulumi.Input.mapOptionalInputValue<List<ResponsePolicyNetworkDnsV1beta2>, List<Map<String, dynamic>>>(networks, (value) => pulumi.Input.encodeList<ResponsePolicyNetworkDnsV1beta2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'responsePolicyName': ?responsePolicyName,
    };
  }

  factory ResponsePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyArgs(
      clientOperationId: map['clientOperationId'] == null ? null : map['clientOperationId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      gkeClusters: map['gkeClusters'] == null ? null : pulumi.Input.decodeList<ResponsePolicyGKEClusterDnsV1beta2>(map['gkeClusters'], (value) => ResponsePolicyGKEClusterDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      networks: map['networks'] == null ? null : pulumi.Input.decodeList<ResponsePolicyNetworkDnsV1beta2>(map['networks'], (value) => ResponsePolicyNetworkDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      responsePolicyName: map['responsePolicyName'] == null ? null : map['responsePolicyName'] as String,
    );
  }
}

