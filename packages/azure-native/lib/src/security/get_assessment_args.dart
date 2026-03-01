// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_assessment_args_doc}
/// Arguments for getAssessment.
/// {@endtemplate}
/// {@macro pulumi_security_get_assessment_args_doc}
class GetAssessmentArgs {
  /// The Assessment Key - Unique key for the assessment type
  final pulumi.Input<String> assessmentName;
  /// OData expand. Optional.
  final pulumi.Input<String>? expand;
  /// The identifier of the resource.
  final pulumi.Input<String> resourceId;

  /// Creates a new [GetAssessmentArgs].
  /// [assessmentName] The Assessment Key - Unique key for the assessment type
  /// [expand] OData expand. Optional.
  /// [resourceId] The identifier of the resource.
  GetAssessmentArgs({
    required String assessmentName,
    String? expand,
    required String resourceId,
  }) :
      assessmentName = pulumi.Input.asInput<String>(assessmentName),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceId = pulumi.Input.asInput<String>(resourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'expand': ?expand,
      'resourceId': resourceId,
    };
  }

  factory GetAssessmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAssessmentArgs(
      assessmentName: map['assessmentName'] as String,
      expand: map['expand'] == null ? null : map['expand'] as String,
      resourceId: map['resourceId'] as String,
    );
  }
}

