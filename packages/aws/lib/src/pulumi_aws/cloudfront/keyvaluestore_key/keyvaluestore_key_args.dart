// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KeyvaluestoreKey.
class KeyvaluestoreKeyArgs {
  /// Key to put.
  final pulumi.Input<String> key;

  /// Amazon Resource Name (ARN) of the Key Value Store.
  final pulumi.Input<String> keyValueStoreArn;

  /// Value to put.
  final pulumi.Input<String> value;

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
      key: pulumi.Input.asInput<String>(map['key']),
      keyValueStoreArn: pulumi.Input.asInput<String>(map['keyValueStoreArn']),
      value: pulumi.Input.asInput<String>(map['value']),
    );
  }
}
