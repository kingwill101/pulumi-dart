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
  GetGeofenceCollectionArgs({
    required pulumi.Output<String> collectionName,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      collectionName = pulumi.Input.asInput<String>(collectionName),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      collectionName: pulumi.Output.create<String>(map['collectionName'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

