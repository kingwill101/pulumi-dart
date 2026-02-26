// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KeyvaluestoreKey.
class KeyvaluestoreKeyArgs {
  /// Key to put.
  final Input<String> key;

  /// Amazon Resource Name (ARN) of the Key Value Store.
  final Input<String> keyValueStoreArn;

  /// Value to put.
  final Input<String> value;

  KeyvaluestoreKeyArgs({
    required this.key,
    required this.keyValueStoreArn,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['keyValueStoreArn'] = keyValueStoreArn;
    map['value'] = value;
    return map;
  }

  factory KeyvaluestoreKeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyvaluestoreKeyArgs(
      key: Input.asInput<String>(map['key']),
      keyValueStoreArn: Input.asInput<String>(map['keyValueStoreArn']),
      value: Input.asInput<String>(map['value']),
    );
  }
}
