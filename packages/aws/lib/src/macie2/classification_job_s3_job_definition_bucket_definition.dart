// ignore_for_file: unused_element, unnecessary_cast

class ClassificationJobS3JobDefinitionBucketDefinition {
  /// The unique identifier for the AWS account that owns the buckets.
  final String accountId;

  /// An array that lists the names of the buckets.
  final List<String> buckets;

  /// Creates a new [ClassificationJobS3JobDefinitionBucketDefinition].
  /// [accountId] The unique identifier for the AWS account that owns the buckets.
  /// [buckets] An array that lists the names of the buckets.
  ClassificationJobS3JobDefinitionBucketDefinition({
    required this.accountId,
    required this.buckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accountId'] = accountId;
    map['buckets'] = buckets;
    return map;
  }

  factory ClassificationJobS3JobDefinitionBucketDefinition.fromMap(
      Map<String, dynamic> map) {
    return ClassificationJobS3JobDefinitionBucketDefinition(
      accountId: map['accountId'] as String,
      buckets: (map['buckets'] as List).cast<String>(),
    );
  }
}
