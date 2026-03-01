// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_status.dart';

/// {@template pulumi_securitycenter_assessment_assessment_args_doc}
/// The set of arguments for Assessment.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_assessment_assessment_args_doc}
class AssessmentArgs {
  /// A map of additional data to associate with the assessment.
  final pulumi.Input<Map<String, String>>? additionalData;
  /// The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created.
  final pulumi.Input<String> assessmentPolicyId;
  /// A `status` block as defined below.
  final pulumi.Input<AssessmentStatus> status;
  /// The ID of the target resource. Changing this forces a new security Assessment to be created.
  final pulumi.Input<String> targetResourceId;

  /// Creates a new [AssessmentArgs].
  /// [additionalData] A map of additional data to associate with the assessment.
  /// [assessmentPolicyId] The ID of the security Assessment policy to apply to this resource. Changing this forces a new security Assessment to be created.
  /// [status] A `status` block as defined below.
  /// [targetResourceId] The ID of the target resource. Changing this forces a new security Assessment to be created.
  AssessmentArgs({
    Map<String, String>? additionalData,
    required String assessmentPolicyId,
    required AssessmentStatus status,
    required String targetResourceId,
  }) :
      additionalData = pulumi.Input.asOptionalInput<Map<String, String>>(additionalData),
      assessmentPolicyId = pulumi.Input.asInput<String>(assessmentPolicyId),
      status = pulumi.Input.asInput<AssessmentStatus>(status),
      targetResourceId = pulumi.Input.asInput<String>(targetResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData,
      'assessmentPolicyId': assessmentPolicyId,
      'status': pulumi.Input.mapInputValue<AssessmentStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'targetResourceId': targetResourceId,
    };
  }

  factory AssessmentArgs.fromMap(Map<String, dynamic> map) {
    return AssessmentArgs(
      additionalData: map['additionalData'] == null ? null : (map['additionalData'] as Map).cast<String, String>(),
      assessmentPolicyId: map['assessmentPolicyId'] as String,
      status: AssessmentStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      targetResourceId: map['targetResourceId'] as String,
    );
  }
}

