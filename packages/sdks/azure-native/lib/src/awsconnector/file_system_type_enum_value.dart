// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of FileSystemTypeEnumValue
class FileSystemTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [FileSystemTypeEnumValue].
  /// [value] Property value
  FileSystemTypeEnumValue({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory FileSystemTypeEnumValue.fromMap(Map<String, dynamic> map) {
    return FileSystemTypeEnumValue(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

