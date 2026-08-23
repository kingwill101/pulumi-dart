// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billingtrust_list_assessment_upload_token_args_doc}
/// Arguments for listAssessmentUploadToken.
/// {@endtemplate}
/// {@macro pulumi_billingtrust_list_assessment_upload_token_args_doc}
class ListAssessmentUploadTokenArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;

  /// Creates a new [ListAssessmentUploadTokenArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  const ListAssessmentUploadTokenArgs({
    required this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
    };
  }

  factory ListAssessmentUploadTokenArgs.fromMap(Map<String, dynamic> map) {
    return ListAssessmentUploadTokenArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
    );
  }
}
