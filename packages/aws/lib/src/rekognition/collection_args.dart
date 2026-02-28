// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collection_timeouts.dart';

/// {@template pulumi_rekognition_collection_collection_args_doc}
/// The set of arguments for Collection.
/// {@endtemplate}
/// {@macro pulumi_rekognition_collection_collection_args_doc}
class CollectionArgs {
  /// The name of the collection
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> collectionId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<CollectionTimeouts>? timeouts;

  /// Creates a new [CollectionArgs].
  /// [collectionId] The name of the collection
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  CollectionArgs({
    required String collectionId,
    String? region,
    Map<String, String>? tags,
    CollectionTimeouts? timeouts,
  }) :
      collectionId = pulumi.Input.asInput<String>(collectionId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<CollectionTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CollectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CollectionArgs.fromMap(Map<String, dynamic> map) {
    return CollectionArgs(
      collectionId: map['collectionId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : CollectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

