// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataTaxonomyAttributeIamPolicy.
class GetDataTaxonomyAttributeIamPolicyArgs {
  final pulumi.Input<String> attributeId;
  final pulumi.Input<String> dataTaxonomyId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

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
      attributeId: pulumi.Input.asInput<String>(map['attributeId']),
      dataTaxonomyId: pulumi.Input.asInput<String>(map['dataTaxonomyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
