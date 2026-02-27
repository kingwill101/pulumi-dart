// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAttribute.
class GetAttributeArgs {
  final pulumi.Input<String> attributeId;
  final pulumi.Input<String> dataTaxonomyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      attributeId: pulumi.Input.asInput<String>(map['attributeId']),
      dataTaxonomyId: pulumi.Input.asInput<String>(map['dataTaxonomyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
