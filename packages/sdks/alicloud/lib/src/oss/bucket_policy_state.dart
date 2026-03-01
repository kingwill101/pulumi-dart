// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketPolicy resources.
class BucketPolicyState {
  /// The name of the Bucket.
  final pulumi.Input<String>? bucket;
  /// Json-formatted authorization policies for buckets.
  final pulumi.Input<String>? policy;

  /// Creates a new [BucketPolicyState].
  /// [bucket] The name of the Bucket.
  /// [policy] Json-formatted authorization policies for buckets.
  BucketPolicyState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? policy,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      policy = pulumi.Input.asOptionalInput<String>(policy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'policy': ?policy,
    };
  }

  factory BucketPolicyState.fromMap(Map<String, dynamic> map) {
    return BucketPolicyState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
    );
  }
}

