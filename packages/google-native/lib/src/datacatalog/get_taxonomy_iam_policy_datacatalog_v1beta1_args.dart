// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_taxonomy_iam_policy_datacatalog_v1beta1_args_doc}
/// Arguments for getTaxonomyIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_taxonomy_iam_policy_datacatalog_v1beta1_args_doc}
class GetTaxonomyIamPolicyDatacatalogV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  /// Creates a new [GetTaxonomyIamPolicyDatacatalogV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [taxonomyId] Required.
  GetTaxonomyIamPolicyDatacatalogV1beta1Args({
    required String location,
    String? project,
    required String taxonomyId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      taxonomyId = pulumi.Input.asInput<String>(taxonomyId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'taxonomyId': taxonomyId,
    };
  }

  factory GetTaxonomyIamPolicyDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyIamPolicyDatacatalogV1beta1Args(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      taxonomyId: map['taxonomyId'] as String,
    );
  }
}

