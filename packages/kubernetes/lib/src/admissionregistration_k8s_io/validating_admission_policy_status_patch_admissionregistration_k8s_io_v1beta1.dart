// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/condition_patch.dart';
import 'type_checking_patch_admissionregistration_k8s_io_v1beta1.dart';

/// ValidatingAdmissionPolicyStatus represents the status of an admission validation policy.
class ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1beta1 {
  /// The conditions represent the latest available observations of a policy's current state.
  final List<ConditionPatch>? conditions;
  /// The generation observed by the controller.
  final int? observedGeneration;
  /// The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  final TypeCheckingPatchAdmissionregistrationK8sIoV1beta1? typeChecking;

  /// Creates a new [ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1beta1].
  /// [conditions] The conditions represent the latest available observations of a policy's current state.
  /// [observedGeneration] The generation observed by the controller.
  /// [typeChecking] The results of type checking for each expression. Presence of this field indicates the completion of the type checking.
  ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1beta1({
    this.conditions,
    this.observedGeneration,
    this.typeChecking,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?conditions == null ? null : pulumi.Input.encodeList<ConditionPatch, Map<String, dynamic>>(conditions!, (value) => value.toMap()),
      'observedGeneration': ?observedGeneration,
      'typeChecking': ?typeChecking == null ? null : typeChecking!.toMap(),
    };
  }

  factory ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ValidatingAdmissionPolicyStatusPatchAdmissionregistrationK8sIoV1beta1(
      conditions: map['conditions'] == null ? null : pulumi.Input.decodeList<ConditionPatch>(map['conditions'], (value) => ConditionPatch.fromMap((value as Map).cast<String, dynamic>())),
      observedGeneration: map['observedGeneration'] == null ? null : map['observedGeneration'] as int,
      typeChecking: map['typeChecking'] == null ? null : TypeCheckingPatchAdmissionregistrationK8sIoV1beta1.fromMap((map['typeChecking'] as Map).cast<String, dynamic>()),
    );
  }
}

