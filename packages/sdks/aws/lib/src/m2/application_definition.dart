// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationDefinition {
  /// JSON application definition. Either this or `s3_location` must be specified.
  final pulumi.Input<String>? content;
  /// Location of the application definition in S3. Either this or `content` must be specified.
  final pulumi.Input<String>? s3Location;

  /// Creates a new [ApplicationDefinition].
  /// [content] JSON application definition. Either this or `s3_location` must be specified.
  /// [s3Location] Location of the application definition in S3. Either this or `content` must be specified.
  ApplicationDefinition({
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
      content: map['content'] == null ? null : (map['content'] as String).input(),
      s3Location: map['s3Location'] == null ? null : (map['s3Location'] as String).input(),
    );
  }
}

