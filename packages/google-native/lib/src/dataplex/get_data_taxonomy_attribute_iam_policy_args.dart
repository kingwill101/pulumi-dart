// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_data_taxonomy_attribute_iam_policy_args_doc}
/// Arguments for getDataTaxonomyAttributeIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_data_taxonomy_attribute_iam_policy_args_doc}
class GetDataTaxonomyAttributeIamPolicyArgs {
  final pulumi.Input<String> attributeId;
  final pulumi.Input<String> dataTaxonomyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDataTaxonomyAttributeIamPolicyArgs].
  /// [attributeId] Required.
  /// [dataTaxonomyId] Required.
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  GetDataTaxonomyAttributeIamPolicyArgs({
    required String attributeId,
    required String dataTaxonomyId,
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
  })  : attributeId = pulumi.Input.asInput<String>(attributeId),
        dataTaxonomyId = pulumi.Input.asInput<String>(dataTaxonomyId),
        location = pulumi.Input.asInput<String>(location),
        optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeId'] = attributeId;
    map['dataTaxonomyId'] = dataTaxonomyId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataTaxonomyAttributeIamPolicyArgs.fromMap(
      Map<String, dynamic> map) {
    return GetDataTaxonomyAttributeIamPolicyArgs(
      attributeId: map['attributeId'] as String,
      dataTaxonomyId: map['dataTaxonomyId'] as String,
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
