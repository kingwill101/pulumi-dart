// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_get_geofence_collection_get_geofence_collection_args_doc}
/// Arguments for getGeofenceCollection.
/// {@endtemplate}
/// {@macro pulumi_location_get_geofence_collection_get_geofence_collection_args_doc}
class GetGeofenceCollectionArgs {
  /// Name of the geofence collection.
  final pulumi.Input<String> collectionName;
  /// Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the geofence collection.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetGeofenceCollectionArgs].
  /// [collectionName] Name of the geofence collection.
  /// [kmsKeyId] Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the geofence collection.
  const GetGeofenceCollectionArgs({
    required this.collectionName,
    this.kmsKeyId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionName': collectionName,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetGeofenceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetGeofenceCollectionArgs(
      collectionName: pulumi.Input.fromValue(map['collectionName'] as String),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

