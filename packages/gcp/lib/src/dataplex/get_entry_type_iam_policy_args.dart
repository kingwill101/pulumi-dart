// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_get_entry_type_iam_policy_get_entry_type_iam_policy_args_doc}
/// Arguments for getEntryTypeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_get_entry_type_iam_policy_get_entry_type_iam_policy_args_doc}
class GetEntryTypeIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> entryTypeId;
  /// The location where entry type will be created in.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryTypeIamPolicyArgs].
  /// [entryTypeId] Used to find the parent resource to bind the IAM policy to
  /// [location] The location where entry type will be created in.
  /// [project] The ID of the project in which the resource belongs.
  GetEntryTypeIamPolicyArgs({
    required String entryTypeId,
    String? location,
    String? project,
  }) :
      entryTypeId = pulumi.Input.asInput<String>(entryTypeId),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryTypeId': entryTypeId,
      'location': ?location,
      'project': ?project,
    };
  }

  factory GetEntryTypeIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryTypeIamPolicyArgs(
      entryTypeId: map['entryTypeId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

