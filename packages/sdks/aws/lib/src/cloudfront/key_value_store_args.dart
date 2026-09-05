// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_store_timeouts.dart';

/// {@template pulumi_cloudfront_key_value_store_key_value_store_args_doc}
/// The set of arguments for KeyValueStore.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_key_value_store_key_value_store_args_doc}
class KeyValueStoreArgs {
  /// Comment.
  final pulumi.Input<String?>? comment;
  /// Unique name for your CloudFront KeyValueStore.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<KeyValueStoreTimeouts?>? timeouts;

  /// Creates a new [KeyValueStoreArgs].
  /// [comment] Comment.
  /// [name] Unique name for your CloudFront KeyValueStore.
  /// [tags] Optional.
  /// [timeouts] Optional.
  const KeyValueStoreArgs({
    this.comment,
    this.name,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': ?name,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeyValueStoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeyValueStoreArgs.fromMap(Map<String, dynamic> map) {
    return KeyValueStoreArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyValueStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
