// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of S3BucketDefinitionForJob
class S3BucketDefinitionForJobResponse {
  /// <p>The unique identifier for the Amazon Web Services account that owns the buckets.</p>
  final pulumi.Input<String>? accountId;
  /// <p>An array that lists the names of the buckets.</p>
  final pulumi.Input<List<String>>? buckets;

  /// Creates a new [S3BucketDefinitionForJobResponse].
  /// [accountId] <p>The unique identifier for the Amazon Web Services account that owns the buckets.</p>
  /// [buckets] <p>An array that lists the names of the buckets.</p>
  S3BucketDefinitionForJobResponse({
    this.accountId,
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'buckets': ?buckets,
    };
  }

  factory S3BucketDefinitionForJobResponse.fromMap(Map<String, dynamic> map) {
    return S3BucketDefinitionForJobResponse(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      buckets: map['buckets'] == null ? null : ((map['buckets'] as List).cast<String>()).input(),
    );
  }
}

