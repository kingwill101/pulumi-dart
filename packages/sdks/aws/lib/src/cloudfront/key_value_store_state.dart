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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? comment,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? lastModifiedTime,
    pulumi.Output<String>? name,
    pulumi.Output<KeyValueStoreTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      comment = pulumi.Input.asOptionalInput<String>(comment),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      lastModifiedTime = pulumi.Input.asOptionalInput<String>(lastModifiedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      timeouts = pulumi.Input.asOptionalInput<KeyValueStoreTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      lastModifiedTime: map['lastModifiedTime'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<KeyValueStoreTimeouts>(KeyValueStoreTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

