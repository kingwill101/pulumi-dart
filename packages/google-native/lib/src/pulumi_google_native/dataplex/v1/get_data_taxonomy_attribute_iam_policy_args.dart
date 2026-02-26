// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDataTaxonomyAttributeIamPolicy.
class GetDataTaxonomyAttributeIamPolicyArgs {
  final Input<String> attributeId;
  final Input<String> dataTaxonomyId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetDataTaxonomyAttributeIamPolicyArgs({
    required this.attributeId,
    required this.dataTaxonomyId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

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
      attributeId: Input.asInput<String>(map['attributeId']),
      dataTaxonomyId: Input.asInput<String>(map['dataTaxonomyId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
