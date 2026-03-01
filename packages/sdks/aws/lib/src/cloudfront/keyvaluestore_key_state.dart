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
    pulumi.Output<String>? key,
    pulumi.Output<String>? keyValueStoreArn,
    pulumi.Output<int>? totalSizeInBytes,
    pulumi.Output<String>? value,
  }) :
      key = pulumi.Input.asOptionalInput<String>(key),
      keyValueStoreArn = pulumi.Input.asOptionalInput<String>(keyValueStoreArn),
      totalSizeInBytes = pulumi.Input.asOptionalInput<int>(totalSizeInBytes),
      value = pulumi.Input.asOptionalInput<String>(value);

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
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      keyValueStoreArn: map['keyValueStoreArn'] == null ? null : pulumi.Output.create<String>(map['keyValueStoreArn'] as String),
      totalSizeInBytes: map['totalSizeInBytes'] == null ? null : pulumi.Output.create<int>(map['totalSizeInBytes'] as int),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

