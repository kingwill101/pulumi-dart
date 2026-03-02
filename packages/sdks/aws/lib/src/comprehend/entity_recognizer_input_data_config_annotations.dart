// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntityRecognizerInputDataConfigAnnotations {
  /// Location of training annotations.
  final pulumi.Input<String> s3Uri;
  final pulumi.Input<String>? testS3Uri;

  /// Creates a new [EntityRecognizerInputDataConfigAnnotations].
  /// [s3Uri] Location of training annotations.
  /// [testS3Uri] Optional.
  EntityRecognizerInputDataConfigAnnotations({
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
      s3Uri: (map['s3Uri'] as String).input(),
      testS3Uri: map['testS3Uri'] == null ? null : ((map['testS3Uri'] as String).input()).input(),
    );
  }
}

