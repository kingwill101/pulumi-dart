// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTaxonomyIamPolicy.
class GetTaxonomyIamPolicyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> taxonomyId;

  GetTaxonomyIamPolicyArgs({
    required this.location,
    this.project,
    required this.taxonomyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['taxonomyId'] = taxonomyId;
    return map;
  }

  factory GetTaxonomyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      taxonomyId: Input.asInput<String>(map['taxonomyId']),
    );
  }
}
