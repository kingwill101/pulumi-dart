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
  KeyValueStoreArgs({
    String? comment,
    String? name,
    KeyValueStoreTimeouts? timeouts,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      name = pulumi.Input.asOptionalInput<String>(name),
      timeouts = pulumi.Input.asOptionalInput<KeyValueStoreTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'name': ?name,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<KeyValueStoreTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory KeyValueStoreArgs.fromMap(Map<String, dynamic> map) {
    return KeyValueStoreArgs(
      comment: map['comment'] == null ? null : map['comment'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      timeouts: map['timeouts'] == null ? null : KeyValueStoreTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

