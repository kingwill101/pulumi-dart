// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTaxonomyIamPolicy.
class GetTaxonomyIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      taxonomyId: pulumi.Input.asInput<String>(map['taxonomyId']),
    );
  }
}
