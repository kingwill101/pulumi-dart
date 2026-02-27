// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTaxonomy.
class GetTaxonomyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> taxonomyId;

  GetTaxonomyArgs({
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

  factory GetTaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      taxonomyId: pulumi.Input.asInput<String>(map['taxonomyId']),
    );
  }
}
