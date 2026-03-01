// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_entry_group_iam_policy_args_doc}
/// Arguments for getEntryGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_entry_group_iam_policy_args_doc}
class GetEntryGroupIamPolicyArgs {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryGroupIamPolicyArgs].
  /// [entryGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntryGroupIamPolicyArgs({
    required String entryGroupId,
    required String location,
    String? project,
  }) : entryGroupId = pulumi.Input.asInput<String>(entryGroupId),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroupId': entryGroupId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntryGroupIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupIamPolicyArgs(
      entryGroupId: map['entryGroupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
