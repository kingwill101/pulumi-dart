// ignore_for_file: unused_element, unnecessary_cast

class FileSystemSizeInByte {
  /// The latest known metered size (in bytes) of data stored in the file system.
  final int? value;

  /// The latest known metered size (in bytes) of data stored in the Infrequent Access storage class.
  final int? valueInIa;

  /// The latest known metered size (in bytes) of data stored in the Standard storage class.
  final int? valueInStandard;

  /// Creates a new [FileSystemSizeInByte].
  /// [value] The latest known metered size (in bytes) of data stored in the file system.
  /// [valueInIa] The latest known metered size (in bytes) of data stored in the Infrequent Access storage class.
  /// [valueInStandard] The latest known metered size (in bytes) of data stored in the Standard storage class.
  FileSystemSizeInByte({this.value, this.valueInIa, this.valueInStandard});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
      'valueInIa': ?valueInIa,
      'valueInStandard': ?valueInStandard,
    };
  }

  factory FileSystemSizeInByte.fromMap(Map<String, dynamic> map) {
    return FileSystemSizeInByte(
      value: map['value'] == null ? null : map['value'] as int,
      valueInIa: map['valueInIa'] == null ? null : map['valueInIa'] as int,
      valueInStandard: map['valueInStandard'] == null
          ? null
          : map['valueInStandard'] as int,
    );
  }
}
