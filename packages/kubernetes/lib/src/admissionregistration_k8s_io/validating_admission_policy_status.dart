// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';
import 'type_checking.dart';

/// ValidatingAdmissionPolicyStatus represents the status of an admission validation policy.
class ValidatingAdmissionPolicyStatus {
  /// The conditions represent the latest available observations of a policy's current state.
  final List<Condition>? conditions;
  /// The generation observed by the controller.
  final int? observedGeneration;
  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final TypeChecking? typeChecking;

  /// Creates a new [ValidatingAdmissionPolicyStatus].
  /// [conditions] The conditions represent the latest available observations of a policy's current state.
  /// [observedGeneration] The generation observed by the controller.
  /// [typeChecking] The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  ValidatingAdmissionPolicyStatus({
    this.conditions,
    this.observedGeneration,
    this.typeChecking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<Condition, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'observedGeneration': ?observedGeneration,
      'typeChecking': ?typeChecking == null ? null : typeChecking!.toMap(),
    };
  }

  factory ValidatingAdmissionPolicyStatus.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyStatus(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<Condition>(map['conditions'], (value) => Condition.fromMap((value as Map).cast<String, dynamic>())),
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      typeChecking: map['typeChecking'] == null ? null : TypeChecking.fromMap((map['typeChecking'] as Map).cast<String, dynamic>()),
    );
  }
}

