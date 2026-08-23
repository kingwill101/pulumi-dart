// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_point_collection_source_properties.dart';

/// {@template pulumi_compute_restore_point_collection_args_doc}
/// The set of arguments for RestorePointCollection.
/// {@endtemplate}
/// {@macro pulumi_compute_restore_point_collection_args_doc}
class RestorePointCollectionArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the restore point collection.
  final pulumi.Input<String>? restorePointCollectionName;
  /// The properties of the source resource that this restore point collection is created from.
  final pulumi.Input<RestorePointCollectionSourceProperties>? source;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RestorePointCollectionArgs].
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restorePointCollectionName] The name of the restore point collection.
  /// [source] The properties of the source resource that this restore point collection is created from.
  /// [tags] Resource tags.
  const RestorePointCollectionArgs({
    this.location,
    required this.resourceGroupName,
    this.restorePointCollectionName,
    this.source,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'restorePointCollectionName': ?restorePointCollectionName,
      'source': ?pulumi.Input.mapOptionalInputValue<RestorePointCollectionSourceProperties, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory RestorePointCollectionArgs.fromMap(Map<String, dynamic> map) {
    return RestorePointCollectionArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restorePointCollectionName: (() { final guardedValue = map['restorePointCollectionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestorePointCollectionSourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
