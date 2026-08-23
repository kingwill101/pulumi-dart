// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyvaluestoreKey resources.
class KeyvaluestoreKeyState {
  /// Key to put.
  final pulumi.Input<String>? key;
  /// Amazon Resource Name (ARN) of the Key Value Store.
  final pulumi.Input<String>? keyValueStoreArn;
  /// Total size of the Key Value Store in bytes.
  final pulumi.Input<int>? totalSizeInBytes;
  /// Value to put.
  final pulumi.Input<String>? value;

  /// Creates a new [KeyvaluestoreKeyState].
  /// [key] Key to put.
  /// [keyValueStoreArn] Amazon Resource Name (ARN) of the Key Value Store.
  /// [totalSizeInBytes] Total size of the Key Value Store in bytes.
  /// [value] Value to put.
  const KeyvaluestoreKeyState({
    this.key,
    this.keyValueStoreArn,
    this.totalSizeInBytes,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'keyValueStoreArn': ?keyValueStoreArn,
      'totalSizeInBytes': ?totalSizeInBytes,
      'value': ?value,
    };
  }

  factory KeyvaluestoreKeyState.fromMap(Map<String, dynamic> map) {
    return KeyvaluestoreKeyState(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyValueStoreArn: (() { final guardedValue = map['keyValueStoreArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalSizeInBytes: (() { final guardedValue = map['totalSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
