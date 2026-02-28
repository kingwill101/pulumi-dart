// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_biglake_v1_get_catalog_args_doc}
/// Arguments for getCatalog.
/// {@endtemplate}
/// {@macro pulumi_biglake_v1_get_catalog_args_doc}
class GetCatalogArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCatalogArgs].
  /// [catalogId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCatalogArgs({
    required String catalogId,
    required String location,
    String? project,
  })  : catalogId = pulumi.Input.asInput<String>(catalogId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCatalogArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogArgs(
      catalogId: map['catalogId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
