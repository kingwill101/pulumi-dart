// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_recommendationengine_v1beta1_get_catalog_item_args_doc}
/// Arguments for getCatalogItem.
/// {@endtemplate}
/// {@macro pulumi_recommendationengine_v1beta1_get_catalog_item_args_doc}
class GetCatalogItemArgs {
  final pulumi.Input<String> catalogId;
  final pulumi.Input<String> catalogItemId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCatalogItemArgs].
  /// [catalogId] Required.
  /// [catalogItemId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCatalogItemArgs({
    required String catalogId,
    required String catalogItemId,
    required String location,
    String? project,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      catalogItemId = pulumi.Input.asInput<String>(catalogItemId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'catalogItemId': catalogItemId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCatalogItemArgs.fromMap(Map<String, dynamic> map) {
    return GetCatalogItemArgs(
      catalogId: map['catalogId'] as String,
      catalogItemId: map['catalogItemId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

