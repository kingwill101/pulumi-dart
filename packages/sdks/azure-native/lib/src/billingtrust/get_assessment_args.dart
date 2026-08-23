// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingtrust_get_assessment_args_doc}
/// Arguments for getAssessment.
/// {@endtemplate}
/// {@macro pulumi_billingtrust_get_assessment_args_doc}
class GetAssessmentArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [GetAssessmentArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const GetAssessmentArgs({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory GetAssessmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAssessmentArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
