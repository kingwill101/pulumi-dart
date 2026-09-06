// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of S3BucketDefinitionForJob
class S3BucketDefinitionForJob {
  /// &lt;p&gt;The unique identifier for the Amazon Web Services account that owns the buckets.&lt;/p&gt;
  final pulumi.Input<String?>? accountId;
  /// &lt;p&gt;An array that lists the names of the buckets.&lt;/p&gt;
  final pulumi.Input<List<String>?>? buckets;

  /// Creates a new [S3BucketDefinitionForJob].
  /// [accountId] &lt;p&gt;The unique identifier for the Amazon Web Services account that owns the buckets.&lt;/p&gt;
  /// [buckets] &lt;p&gt;An array that lists the names of the buckets.&lt;/p&gt;
  const S3BucketDefinitionForJob({
    this.accountId,
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'buckets': ?buckets,
    };
  }

  factory S3BucketDefinitionForJob.fromMap(Map<String, dynamic> map) {
    return S3BucketDefinitionForJob(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
