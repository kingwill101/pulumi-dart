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
  const KeyvaluestoreKeyArgs({
    required this.key,
    required this.keyValueStoreArn,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'keyValueStoreArn': keyValueStoreArn,
      'value': value,
    };
  }

  factory KeyvaluestoreKeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyvaluestoreKeyArgs(
      key: pulumi.Input.fromValue(map['key'] as String),
      keyValueStoreArn: pulumi.Input.fromValue(map['keyValueStoreArn'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
