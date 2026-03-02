// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the compound assessment.
class CompoundAssessmentDetailsResponse {
  /// Timestamp when the assessment was created.
  final pulumi.Input<String>? createdTimestamp;
  /// Status of the assessment.
  final pulumi.Input<String> status;
  /// Timestamp when the assessment was last updated.
  final pulumi.Input<String>? updatedTimestamp;

  /// Creates a new [CompoundAssessmentDetailsResponse].
  /// [createdTimestamp] Timestamp when the assessment was created.
  /// [status] Status of the assessment.
  /// [updatedTimestamp] Timestamp when the assessment was last updated.
  CompoundAssessmentDetailsResponse({
    this.createdTimestamp,
    required this.status,
    this.updatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTimestamp': ?createdTimestamp,
      'status': status,
      'updatedTimestamp': ?updatedTimestamp,
    };
  }

  factory CompoundAssessmentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CompoundAssessmentDetailsResponse(
      createdTimestamp: map['createdTimestamp'] == null ? null : (map['createdTimestamp'] as String).input(),
      status: (map['status'] as String).input(),
      updatedTimestamp: map['updatedTimestamp'] == null ? null : (map['updatedTimestamp'] as String).input(),
    );
  }
}

