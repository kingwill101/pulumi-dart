// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getCatalogItem.
class GetCatalogItemArgs {
  final Input<String> catalogId;
  final Input<String> catalogItemId;
  final Input<String> location;
  final Input<String>? project;

  GetCatalogItemArgs({
    required this.catalogId,
    required this.catalogItemId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['catalogItemId'] = catalogItemId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCatalogItemArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogItemArgs(
      catalogId: Input.asInput<String>(map['catalogId']),
      catalogItemId: Input.asInput<String>(map['catalogItemId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
