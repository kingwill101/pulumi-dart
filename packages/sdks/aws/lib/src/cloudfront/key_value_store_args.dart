// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_value_store_timeouts.dart';

/// {@template pulumi_cloudfront_key_value_store_key_value_store_args_doc}
/// The set of arguments for KeyValueStore.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_key_value_store_key_value_store_args_doc}
class KeyValueStoreArgs {
  /// Comment.
  final pulumi.Input<String>? comment;
  /// Unique name for your CloudFront KeyValueStore.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  final pulumi.Input<KeyValueStoreTimeouts>? timeouts;

  /// Creates a new [KeyValueStoreArgs].
  /// [comment] Comment.
  /// [name] Unique name for your CloudFront KeyValueStore.
  /// [timeouts] Optional.
  const KeyValueStoreArgs({
    this.comment,
    this.name,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': ?name,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeyValueStoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeyValueStoreArgs.fromMap(Map<String, dynamic> map) {
    return KeyValueStoreArgs(
      comment: (() { final guardedValue = map['comment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyValueStoreTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

