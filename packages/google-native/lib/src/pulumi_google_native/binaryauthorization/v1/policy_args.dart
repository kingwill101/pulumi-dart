// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_policy.dart';

/// The set of arguments for Policy.
class PolicyArgs {
  /// Optional. A description comment about the policy.
  final pulumi.Input<String>? description;

  /// Optional. GKE platform-specific policy.
  final pulumi.Input<GkePolicy>? gkePolicy;
  final pulumi.Input<String> platformId;

  /// Required. The platform policy ID.
  final pulumi.Input<String> policyId;
  final pulumi.Input<String>? project;

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
          pulumi.Input.mapOptionalInputValue<GkePolicy, Map<String, dynamic>>(
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
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      gkePolicy: pulumi.Input.asOptionalInput<GkePolicy>(map['gkePolicy']),
      platformId: pulumi.Input.asInput<String>(map['platformId']),
      policyId: pulumi.Input.asInput<String>(map['policyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
