// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_timeouts.dart';

/// Input properties used for looking up and filtering Collection resources.
class CollectionState {
  /// ARN of the Collection.
  final pulumi.Input<String>? arn;
  /// The name of the collection
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? collectionId;
  /// The Face Model Version that the collection was initialized with
  final pulumi.Input<String>? faceModelVersion;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CollectionTimeouts>? timeouts;

  /// Creates a new [CollectionState].
  /// [arn] ARN of the Collection.
  /// [collectionId] The name of the collection
  /// [faceModelVersion] The Face Model Version that the collection was initialized with
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  CollectionState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? collectionId,
    pulumi.Output<String>? faceModelVersion,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<CollectionTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      collectionId = pulumi.Input.asOptionalInput<String>(collectionId),
      faceModelVersion = pulumi.Input.asOptionalInput<String>(faceModelVersion),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<CollectionTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'collectionId': ?collectionId,
      'faceModelVersion': ?faceModelVersion,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CollectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CollectionState.fromMap(Map<String, dynamic> map) {
    return CollectionState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      collectionId: map['collectionId'] == null ? null : pulumi.Output.create<String>(map['collectionId'] as String),
      faceModelVersion: map['faceModelVersion'] == null ? null : pulumi.Output.create<String>(map['faceModelVersion'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CollectionTimeouts>(CollectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

