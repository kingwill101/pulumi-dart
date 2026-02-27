// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDataTaxonomy.
class GetDataTaxonomyArgs {
  final Input<String> dataTaxonomyId;
  final Input<String> location;
  final Input<String>? project;

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
      dataTaxonomyId: Input.asInput<String>(map['dataTaxonomyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
