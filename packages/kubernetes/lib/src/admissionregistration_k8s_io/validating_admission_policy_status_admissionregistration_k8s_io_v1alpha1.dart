// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition.dart';
import 'type_checking_admissionregistration_k8s_io_v1alpha1.dart';

/// ValidatingAdmissionPolicyStatus represents the status of a ValidatingAdmissionPolicy.
class ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1alpha1 {
  /// The conditions represent the latest available observations of a policy's current state.
  final List<Condition>? conditions;
  /// The generation observed by the controller.
  final int? observedGeneration;
  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final TypeCheckingAdmissionregistrationK8sIoV1alpha1? typeChecking;

  /// Creates a new [ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1alpha1].
  /// [conditions] The conditions represent the latest available observations of a policy's current state.
  /// [observedGeneration] The generation observed by the controller.
  /// [typeChecking] The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1alpha1({
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

  factory ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyStatusAdmissionregistrationK8sIoV1alpha1(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<Condition>(map['conditions'], (value) => Condition.fromMap((value as Map).cast<String, dynamic>())),
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      typeChecking: map['typeChecking'] == null ? null : TypeCheckingAdmissionregistrationK8sIoV1alpha1.fromMap((map['typeChecking'] as Map).cast<String, dynamic>()),
    );
  }
}

