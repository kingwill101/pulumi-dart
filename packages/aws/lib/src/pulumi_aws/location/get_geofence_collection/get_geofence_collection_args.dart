// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGeofenceCollection.
class GetGeofenceCollectionArgs {
  /// Name of the geofence collection.
  final Input<String> collectionName;

  /// Key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final Input<String>? kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the geofence collection.
  final Input<Map<String, String>>? tags;

  GetGeofenceCollectionArgs({
    required this.collectionName,
    this.kmsKeyId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionName'] = collectionName;
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetGeofenceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GetGeofenceCollectionArgs(
      collectionName: Input.asInput<String>(map['collectionName']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
