// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'response_policy_gkecluster2.dart';
import 'response_policy_network2.dart';

/// The set of arguments for ResponsePolicy.
class ResponsePolicyArgs {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final Input<String>? clientOperationId;

  /// User-provided description for this Response Policy.
  final Input<String>? description;

  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  final Input<List<ResponsePolicyGKECluster2>>? gkeClusters;
  final Input<String>? kind;

  /// User labels.
  final Input<Map<String, String>>? labels;

  /// List of network names specifying networks to which this policy is applied.
  final Input<List<ResponsePolicyNetwork2>>? networks;
  final Input<String>? project;

  /// User assigned name for this Response Policy.
  final Input<String>? responsePolicyName;

  ResponsePolicyArgs({
    this.clientOperationId,
    this.description,
    this.gkeClusters,
    this.kind,
    this.labels,
    this.networks,
    this.project,
    this.responsePolicyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientOperationIdValue = clientOperationId;
    if (clientOperationIdValue != null) {
      map['clientOperationId'] = clientOperationIdValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gkeClustersValue = gkeClusters;
    if (gkeClustersValue != null) {
      map['gkeClusters'] = Input.mapOptionalInputValue<
              List<ResponsePolicyGKECluster2>, List<Map<String, dynamic>>>(
          gkeClustersValue,
          (value) =>
              Input.encodeList<ResponsePolicyGKECluster2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final networksValue = networks;
    if (networksValue != null) {
      map['networks'] = Input.mapOptionalInputValue<
              List<ResponsePolicyNetwork2>, List<Map<String, dynamic>>>(
          networksValue,
          (value) =>
              Input.encodeList<ResponsePolicyNetwork2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final responsePolicyNameValue = responsePolicyName;
    if (responsePolicyNameValue != null) {
      map['responsePolicyName'] = responsePolicyNameValue;
    }
    return map;
  }

  factory ResponsePolicyArgs.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyArgs(
      clientOperationId:
          Input.asOptionalInput<String>(map['clientOperationId']),
      description: Input.asOptionalInput<String>(map['description']),
      gkeClusters: Input.asOptionalInput<List<ResponsePolicyGKECluster2>>(
          map['gkeClusters']),
      kind: Input.asOptionalInput<String>(map['kind']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      networks:
          Input.asOptionalInput<List<ResponsePolicyNetwork2>>(map['networks']),
      project: Input.asOptionalInput<String>(map['project']),
      responsePolicyName:
          Input.asOptionalInput<String>(map['responsePolicyName']),
    );
  }
}
