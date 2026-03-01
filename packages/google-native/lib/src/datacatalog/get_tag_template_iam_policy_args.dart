// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_tag_template_iam_policy_args_doc}
/// Arguments for getTagTemplateIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_tag_template_iam_policy_args_doc}
class GetTagTemplateIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tagTemplateId;

  /// Creates a new [GetTagTemplateIamPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [tagTemplateId] Required.
  GetTagTemplateIamPolicyArgs({
    required String location,
    String? project,
    required String tagTemplateId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       tagTemplateId = pulumi.Input.asInput<String>(tagTemplateId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'tagTemplateId': tagTemplateId,
    };
  }

  factory GetTagTemplateIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTagTemplateIamPolicyArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tagTemplateId: map['tagTemplateId'] as String,
    );
  }
}
