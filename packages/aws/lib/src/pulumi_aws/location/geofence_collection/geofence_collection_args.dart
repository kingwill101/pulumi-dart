// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for GeofenceCollection.
class GeofenceCollectionArgs {
  /// The name of the geofence collection.
  ///
  /// The following arguments are optional:
  final Input<String> collectionName;

  /// The optional description for the geofence collection.
  final Input<String>? description;

  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final Input<String>? kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the geofence collection. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  GeofenceCollectionArgs({
    required this.collectionName,
    this.description,
    this.kmsKeyId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionName'] = collectionName;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
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

  factory GeofenceCollectionArgs.fromMap(Map<String, dynamic> map) {
    return GeofenceCollectionArgs(
      collectionName: Input.asInput<String>(map['collectionName']),
      description: Input.asOptionalInput<String>(map['description']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
