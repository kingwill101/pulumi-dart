// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_policy_tag_datacatalog_v1beta1_args_doc}
/// Arguments for getPolicyTag.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_policy_tag_datacatalog_v1beta1_args_doc}
class GetPolicyTagDatacatalogV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String> policyTagId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  /// Creates a new [GetPolicyTagDatacatalogV1beta1Args].
  /// [location] Required.
  /// [policyTagId] Required.
  /// [project] Optional.
  /// [taxonomyId] Required.
  GetPolicyTagDatacatalogV1beta1Args({
    required String location,
    required String policyTagId,
    String? project,
    required String taxonomyId,
  })  : location = pulumi.Input.asInput<String>(location),
        policyTagId = pulumi.Input.asInput<String>(policyTagId),
        project = pulumi.Input.asOptionalInput<String>(project),
        taxonomyId = pulumi.Input.asInput<String>(taxonomyId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['policyTagId'] = policyTagId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['taxonomyId'] = taxonomyId;
    return map;
  }

  factory GetPolicyTagDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetPolicyTagDatacatalogV1beta1Args(
      location: map['location'] as String,
      policyTagId: map['policyTagId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      taxonomyId: map['taxonomyId'] as String,
    );
  }
}
