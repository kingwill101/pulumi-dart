// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntityRecognizerInputDataConfigAnnotations {
  /// Location of training annotations.
  final pulumi.Input<String> s3Uri;
  final pulumi.Input<String>? testS3Uri;

  /// Creates a new [EntityRecognizerInputDataConfigAnnotations].
  /// [s3Uri] Location of training annotations.
  /// [testS3Uri] Optional.
  const EntityRecognizerInputDataConfigAnnotations({
    required this.s3Uri,
    this.testS3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
      'testS3Uri': ?testS3Uri,
    };
  }

  factory EntityRecognizerInputDataConfigAnnotations.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfigAnnotations(
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
      testS3Uri: (() { final guardedValue = map['testS3Uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

