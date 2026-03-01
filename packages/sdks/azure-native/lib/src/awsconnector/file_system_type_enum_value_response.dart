// ignore_for_file: unused_element, unnecessary_cast


/// Definition of FileSystemTypeEnumValue
class FileSystemTypeEnumValueResponse {
  /// Property value
  final String? value;

  /// Creates a new [FileSystemTypeEnumValueResponse].
  /// [value] Property value
  FileSystemTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory FileSystemTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return FileSystemTypeEnumValueResponse(
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

