// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GeofenceCollection resources.
class GeofenceCollectionState {
  /// The Amazon Resource Name (ARN) for the geofence collection resource. Used when you need to specify a resource across all AWS.
  final pulumi.Input<String>? collectionArn;
  /// The name of the geofence collection.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? collectionName;
  /// The timestamp for when the geofence collection resource was created in ISO 8601 format.
  final pulumi.Input<String>? createTime;
  /// The optional description for the geofence collection.
  final pulumi.Input<String>? description;
  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  final pulumi.Input<String>? kmsKeyId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the geofence collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GeofenceCollectionState].
  /// [collectionArn] The Amazon Resource Name (ARN) for the geofence collection resource. Used when you need to specify a resource across all AWS.
  /// [collectionName] The name of the geofence collection.
  /// [createTime] The timestamp for when the geofence collection resource was created in ISO 8601 format.
  /// [description] The optional description for the geofence collection.
  /// [kmsKeyId] A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the geofence collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [updateTime] The timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  GeofenceCollectionState({
    pulumi.Output<String>? collectionArn,
    pulumi.Output<String>? collectionName,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? updateTime,
  }) :
      collectionArn = pulumi.Input.asOptionalInput<String>(collectionArn),
      collectionName = pulumi.Input.asOptionalInput<String>(collectionName),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionArn': ?collectionArn,
      'collectionName': ?collectionName,
      'createTime': ?createTime,
      'description': ?description,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'updateTime': ?updateTime,
    };
  }

  factory GeofenceCollectionState.fromMap(Map<String, dynamic> map) {
    return GeofenceCollectionState(
      collectionArn: map['collectionArn'] == null ? null : pulumi.Output.create<String>(map['collectionArn'] as String),
      collectionName: map['collectionName'] == null ? null : pulumi.Output.create<String>(map['collectionName'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

