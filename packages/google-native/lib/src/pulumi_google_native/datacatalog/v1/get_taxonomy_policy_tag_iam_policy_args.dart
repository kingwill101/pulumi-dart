// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTaxonomyPolicyTagIamPolicy.
class GetTaxonomyPolicyTagIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> policyTagId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  GetTaxonomyPolicyTagIamPolicyArgs({
    required this.location,
    required this.policyTagId,
    this.project,
    required this.taxonomyId,
  });

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

  factory GetTaxonomyPolicyTagIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyPolicyTagIamPolicyArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      policyTagId: pulumi.Input.asInput<String>(map['policyTagId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      taxonomyId: pulumi.Input.asInput<String>(map['taxonomyId']),
    );
  }
}
