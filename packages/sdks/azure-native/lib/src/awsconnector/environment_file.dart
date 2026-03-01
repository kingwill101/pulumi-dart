// ignore_for_file: unused_element, unnecessary_cast


/// Definition of EnvironmentFile
class EnvironmentFile {
  /// The file type to use. Environment files are objects in Amazon S3. The only supported value is ``s3``.
  final String? type;
  /// The Amazon Resource Name (ARN) of the Amazon S3 object containing the environment variable file.
  final String? value;

  /// Creates a new [EnvironmentFile].
  /// [type] The file type to use. Environment files are objects in Amazon S3. The only supported value is ``s3``.
  /// [value] The Amazon Resource Name (ARN) of the Amazon S3 object containing the environment variable file.
  EnvironmentFile({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory EnvironmentFile.fromMap(Map<String, dynamic> map) {
    return EnvironmentFile(
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

