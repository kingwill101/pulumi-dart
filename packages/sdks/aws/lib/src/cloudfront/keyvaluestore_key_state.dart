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
  KeyvaluestoreKeyState({
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
      key: map['key'] == null ? null : ((map['key'] as String).input()).input(),
      keyValueStoreArn: map['keyValueStoreArn'] == null ? null : ((map['keyValueStoreArn'] as String).input()).input(),
      totalSizeInBytes: map['totalSizeInBytes'] == null ? null : ((map['totalSizeInBytes'] as int).input()).input(),
      value: map['value'] == null ? null : ((map['value'] as String).input()).input(),
    );
  }
}

