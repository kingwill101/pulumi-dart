// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTaxonomyPolicyTagIamPolicy.
class GetTaxonomyPolicyTagIamPolicyArgs {
  final Input<String> location;
  final Input<String> policyTagId;
  final Input<String>? project;
  final Input<String> taxonomyId;

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
      location: Input.asInput<String>(map['location']),
      policyTagId: Input.asInput<String>(map['policyTagId']),
      project: Input.asOptionalInput<String>(map['project']),
      taxonomyId: Input.asInput<String>(map['taxonomyId']),
    );
  }
}
