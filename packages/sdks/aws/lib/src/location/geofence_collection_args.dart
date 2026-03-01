// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_location_geofence_collection_geofence_collection_args_doc}
/// The set of arguments for GeofenceCollection.
/// {@endtemplate}
/// {@macro pulumi_location_geofence_collection_geofence_collection_args_doc}
class GeofenceCollectionArgs {
  /// The name of the geofence collection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> collectionName;
  /// The optional description for the geofence collection.
  final pulumi.Input<String>? description;
  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the geofence collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GeofenceCollectionArgs].
  /// [collectionName] The name of the geofence collection.
  /// [description] The optional description for the geofence collection.
  /// [kmsKeyId] A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the geofence collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  GeofenceCollectionArgs({
    required pulumi.Output<String> collectionName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      collectionName = pulumi.Input.asInput<String>(collectionName),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionName': collectionName,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GeofenceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GeofenceCollectionArgs(
      collectionName: pulumi.Output.create<String>(map['collectionName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

