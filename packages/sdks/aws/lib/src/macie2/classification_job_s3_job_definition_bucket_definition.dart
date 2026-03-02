// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassificationJobS3JobDefinitionBucketDefinition {
  /// The unique identifier for the AWS account that owns the buckets.
  final pulumi.Input<String> accountId;
  /// An array that lists the names of the buckets.
  final pulumi.Input<List<String>> buckets;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketDefinition].
  /// [accountId] The unique identifier for the AWS account that owns the buckets.
  /// [buckets] An array that lists the names of the buckets.
  ClassificationJobS3JobDefinitionBucketDefinition({
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
      accountId: (map['accountId'] as String).input(),
      buckets: ((map['buckets'] as List).cast<String>()).input(),
    );
  }
}

