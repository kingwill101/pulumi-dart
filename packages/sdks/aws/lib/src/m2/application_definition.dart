// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationDefinition {
  /// JSON application definition. Either this or `s3Location` must be specified.
  final pulumi.Input<String>? content;
  /// Location of the application definition in S3. Either this or `content` must be specified.
  final pulumi.Input<String>? s3Location;

  /// Creates a new [ApplicationDefinition].
  /// [content] JSON application definition. Either this or `s3Location` must be specified.
  /// [s3Location] Location of the application definition in S3. Either this or `content` must be specified.
  const ApplicationDefinition({
    this.content,
    this.s3Location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      's3Location': ?s3Location,
    };
  }

  factory ApplicationDefinition.fromMap(Map<String, dynamic> map) {
    return ApplicationDefinition(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3Location: (() { final guardedValue = map['s3Location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
