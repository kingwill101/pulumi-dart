// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentFile {
  /// The ARN of the bucket that contains the environment file.
  final pulumi.Input<String> bucketArn;
  /// The object key of the environment file.
  final pulumi.Input<String> key;

  /// Creates a new [EnvironmentFile].
  /// [bucketArn] The ARN of the bucket that contains the environment file.
  /// [key] The object key of the environment file.
  const EnvironmentFile({
    required this.bucketArn,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketArn': bucketArn,
      'key': key,
    };
  }

  factory EnvironmentFile.fromMap(Map<String, dynamic> map) {
    return EnvironmentFile(
      bucketArn: pulumi.Input.fromValue(map['bucketArn'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
    );
  }
}
