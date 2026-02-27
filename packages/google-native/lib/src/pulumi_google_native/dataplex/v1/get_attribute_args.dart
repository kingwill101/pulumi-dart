// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getAttribute.
class GetAttributeArgs {
  final Input<String> attributeId;
  final Input<String> dataTaxonomyId;
  final Input<String> location;
  final Input<String>? project;

  GetAttributeArgs({
    required this.attributeId,
    required this.dataTaxonomyId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeId'] = attributeId;
    map['dataTaxonomyId'] = dataTaxonomyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetAttributeArgs.fromMap(Map<String, dynamic> map) {
    return GetAttributeArgs(
      attributeId: Input.asInput<String>(map['attributeId']),
      dataTaxonomyId: Input.asInput<String>(map['dataTaxonomyId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
