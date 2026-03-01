// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';

/// NetworkPolicyStatus describe the current state of the NetworkPolicy.
class NetworkPolicyStatusPatch {
  /// Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
  final List<ConditionPatch>? conditions;

  /// Creates a new [NetworkPolicyStatusPatch].
  /// [conditions] Conditions holds an array of metav1.Condition that describe the state of the NetworkPolicy. Current service state
  NetworkPolicyStatusPatch({
    this.conditions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
    };
  }

  factory NetworkPolicyStatusPatch.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyStatusPatch(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ConditionPatch>(map['conditions'], (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

