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
  final pulumi.Input<KeyValueStoreTimeouts>? timeouts;

  /// Creates a new [KeyValueStoreState].
  /// [arn] Amazon Resource Name (ARN) identifying your CloudFront KeyValueStore.
  /// [comment] Comment.
  /// [etag] ETag hash of the KeyValueStore.
  /// [lastModifiedTime] Optional.
  /// [name] Unique name for your CloudFront KeyValueStore.
  /// [timeouts] Optional.
  KeyValueStoreState({
    this.arn,
    this.comment,
    this.etag,
    this.lastModifiedTime,
    this.name,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'comment': ?comment,
      'etag': ?etag,
      'lastModifiedTime': ?lastModifiedTime,
      'name': ?name,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeyValueStoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeyValueStoreState.fromMap(Map<String, dynamic> map) {
    return KeyValueStoreState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      comment: map['comment'] == null ? null : (map['comment'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : (map['lastModifiedTime'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      timeouts: map['timeouts'] == null ? null : (KeyValueStoreTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

