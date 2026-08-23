// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EntityRecognizerInputDataConfigEntityList {
  /// Location of entity list.
  final pulumi.Input<String> s3Uri;

  /// Creates a new [EntityRecognizerInputDataConfigEntityList].
  /// [s3Uri] Location of entity list.
  const EntityRecognizerInputDataConfigEntityList({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Uri': s3Uri,
    };
  }

  factory EntityRecognizerInputDataConfigEntityList.fromMap(Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfigEntityList(
      s3Uri: pulumi.Input.fromValue(map['s3Uri'] as String),
    );
  }
}
