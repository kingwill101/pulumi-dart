// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of EnvironmentFile
class EnvironmentFile {
  /// The file type to use. Environment files are objects in Amazon S3. The only supported value is ``s3``.
  final pulumi.Input<String?>? type;
  /// The Amazon Resource Name (ARN) of the Amazon S3 object containing the environment variable file.
  final pulumi.Input<String?>? value;

  /// Creates a new [EnvironmentFile].
  /// [type] The file type to use. Environment files are objects in Amazon S3. The only supported value is ``s3``.
  /// [value] The Amazon Resource Name (ARN) of the Amazon S3 object containing the environment variable file.
  const EnvironmentFile({
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
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
