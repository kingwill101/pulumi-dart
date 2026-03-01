// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_keyvaluestore_key_keyvaluestore_key_args_doc}
/// The set of arguments for KeyvaluestoreKey.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_keyvaluestore_key_keyvaluestore_key_args_doc}
class KeyvaluestoreKeyArgs {
  /// Key to put.
  final pulumi.Input<String> key;

  /// Amazon Resource Name (ARN) of the Key Value Store.
  final pulumi.Input<String> keyValueStoreArn;

  /// Value to put.
  final pulumi.Input<String> value;

  /// Creates a new [KeyvaluestoreKeyArgs].
  /// [key] Key to put.
  /// [keyValueStoreArn] Amazon Resource Name (ARN) of the Key Value Store.
  /// [value] Value to put.
  KeyvaluestoreKeyArgs({
    required String key,
    required String keyValueStoreArn,
    required String value,
  }) : key = pulumi.Input.asInput<String>(key),
       keyValueStoreArn = pulumi.Input.asInput<String>(keyValueStoreArn),
       value = pulumi.Input.asInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'keyValueStoreArn': keyValueStoreArn,
      'value': value,
    };
  }

  factory KeyvaluestoreKeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyvaluestoreKeyArgs(
      key: map['key'] as String,
      keyValueStoreArn: map['keyValueStoreArn'] as String,
      value: map['value'] as String,
    );
  }
}
