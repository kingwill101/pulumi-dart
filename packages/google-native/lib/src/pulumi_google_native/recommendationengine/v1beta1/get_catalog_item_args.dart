// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCatalogItem.
class GetCatalogItemArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> catalogItemId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      catalogId: pulumi.Input.asInput<String>(map['catalogId']),
      catalogItemId: pulumi.Input.asInput<String>(map['catalogItemId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
