// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'gke_policy.dart';

/// The set of arguments for Policy.
class PolicyArgs {
  /// Optional. A description comment about the policy.
  final Input<String>? description;

  /// Optional. GKE platform-specific policy.
  final Input<GkePolicy>? gkePolicy;
  final Input<String> platformId;

  /// Required. The platform policy ID.
  final Input<String> policyId;
  final Input<String>? project;

  PolicyArgs({
    this.description,
    this.gkePolicy,
    required this.platformId,
    required this.policyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gkePolicyValue = gkePolicy;
    if (gkePolicyValue != null) {
      map['gkePolicy'] =
          Input.mapOptionalInputValue<GkePolicy, Map<String, dynamic>>(
              gkePolicyValue, (value) => value.toMap());
    }
    map['platformId'] = platformId;
    map['policyId'] = policyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      description: Input.asOptionalInput<String>(map['description']),
      gkePolicy: Input.asOptionalInput<GkePolicy>(map['gkePolicy']),
      platformId: Input.asInput<String>(map['platformId']),
      policyId: Input.asInput<String>(map['policyId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
