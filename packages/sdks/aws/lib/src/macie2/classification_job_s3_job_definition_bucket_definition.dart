// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobS3JobDefinitionBucketDefinition {
  /// Unique identifier for the AWS account that owns the buckets.
  final pulumi.Input<String> accountId;
  /// Array that lists the names of the buckets.
  final pulumi.Input<List<String>> buckets;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketDefinition].
  /// [accountId] Unique identifier for the AWS account that owns the buckets.
  /// [buckets] Array that lists the names of the buckets.
  const ClassificationJobS3JobDefinitionBucketDefinition({
    required this.accountId,
    required this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'buckets': buckets,
    };
  }

  factory ClassificationJobS3JobDefinitionBucketDefinition.fromMap(Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketDefinition(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      buckets: pulumi.Input.fromValue((map['buckets'] as List).cast<String>()),
    );
  }
}
