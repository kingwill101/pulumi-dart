// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FileSystemSizeInByte {
  /// The latest known metered size (in bytes) of data stored in the file system.
  final pulumi.Input<int?>? value;
  /// The latest known metered size (in bytes) of data stored in the Infrequent Access storage class.
  final pulumi.Input<int?>? valueInIa;
  /// The latest known metered size (in bytes) of data stored in the Standard storage class.
  final pulumi.Input<int?>? valueInStandard;

  /// Creates a new [FileSystemSizeInByte].
  /// [value] The latest known metered size (in bytes) of data stored in the file system.
  /// [valueInIa] The latest known metered size (in bytes) of data stored in the Infrequent Access storage class.
  /// [valueInStandard] The latest known metered size (in bytes) of data stored in the Standard storage class.
  const FileSystemSizeInByte({
    this.value,
    this.valueInIa,
    this.valueInStandard,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'valueInIa': ?valueInIa,
      'valueInStandard': ?valueInStandard,
    };
  }

  factory FileSystemSizeInByte.fromMap(Map<String, dynamic> map) {
    return FileSystemSizeInByte(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      valueInIa: (() { final guardedValue = map['valueInIa']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      valueInStandard: (() { final guardedValue = map['valueInStandard']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
