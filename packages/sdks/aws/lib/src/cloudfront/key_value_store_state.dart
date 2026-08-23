// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_store_timeouts.dart';

/// Input properties used for looking up and filtering KeyValueStore resources.
class KeyValueStoreState {
  /// Amazon Resource Name (ARN) identifying your CloudFront KeyValueStore.
  final pulumi.Input<String>? arn;
  /// Comment.
  final pulumi.Input<String>? comment;
  /// ETag hash of the KeyValueStore.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String>? lastModifiedTime;
  /// Unique name for your CloudFront KeyValueStore.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<KeyValueStoreTimeouts>? timeouts;

  /// Creates a new [KeyValueStoreState].
  /// [arn] Amazon Resource Name (ARN) identifying your CloudFront KeyValueStore.
  /// [comment] Comment.
  /// [etag] ETag hash of the KeyValueStore.
  /// [lastModifiedTime] Optional.
  /// [name] Unique name for your CloudFront KeyValueStore.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  const KeyValueStoreState({
    this.arn,
    this.comment,
    this.etag,
    this.lastModifiedTime,
    this.name,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'etag': ?etag,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeyValueStoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeyValueStoreState.fromMap(Map<String, dynamic> map) {
    return KeyValueStoreState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTime: (() { final guardedValue = map['lastModifiedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyValueStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
