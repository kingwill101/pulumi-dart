// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDataTaxonomy.
class GetDataTaxonomyArgs {
  final pulumi.Input<String> dataTaxonomyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDataTaxonomyArgs({
    required this.dataTaxonomyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataTaxonomyId'] = dataTaxonomyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDataTaxonomyArgs.fromMap(Map<String, dynamic> map) {
    return GetDataTaxonomyArgs(
      dataTaxonomyId: pulumi.Input.asInput<String>(map['dataTaxonomyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
