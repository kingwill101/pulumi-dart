// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_entry_group_iam_policy_datacatalog_v1beta1_args_doc}
/// Arguments for getEntryGroupIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_entry_group_iam_policy_datacatalog_v1beta1_args_doc}
class GetEntryGroupIamPolicyDatacatalogV1beta1Args {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryGroupIamPolicyDatacatalogV1beta1Args].
  /// [entryGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntryGroupIamPolicyDatacatalogV1beta1Args({
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

  factory GetEntryGroupIamPolicyDatacatalogV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEntryGroupIamPolicyDatacatalogV1beta1Args(
      entryGroupId: map['entryGroupId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
