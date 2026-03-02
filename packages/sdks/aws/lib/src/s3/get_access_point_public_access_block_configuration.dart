// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessPointPublicAccessBlockConfiguration {
  /// Whether Amazon S3 blocks public ACLs for buckets in this account.
  final pulumi.Input<bool> blockPublicAcls;
  /// Whether Amazon S3 blocks public bucket policies for buckets in this account.
  final pulumi.Input<bool> blockPublicPolicy;
  /// Whether Amazon S3 ignores public ACLs for buckets in this account.
  final pulumi.Input<bool> ignorePublicAcls;
  /// Whether Amazon S3 restricts public bucket policies for buckets in this account.
  final pulumi.Input<bool> restrictPublicBuckets;

  /// Creates a new [GetAccessPointPublicAccessBlockConfiguration].
  /// [blockPublicAcls] Whether Amazon S3 blocks public ACLs for buckets in this account.
  /// [blockPublicPolicy] Whether Amazon S3 blocks public bucket policies for buckets in this account.
  /// [ignorePublicAcls] Whether Amazon S3 ignores public ACLs for buckets in this account.
  /// [restrictPublicBuckets] Whether Amazon S3 restricts public bucket policies for buckets in this account.
  GetAccessPointPublicAccessBlockConfiguration({
    required this.blockPublicAcls,
    required this.blockPublicPolicy,
    required this.ignorePublicAcls,
    required this.restrictPublicBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAcls': blockPublicAcls,
      'blockPublicPolicy': blockPublicPolicy,
      'ignorePublicAcls': ignorePublicAcls,
      'restrictPublicBuckets': restrictPublicBuckets,
    };
  }

  factory GetAccessPointPublicAccessBlockConfiguration.fromMap(Map<String, dynamic> map) {
    return GetAccessPointPublicAccessBlockConfiguration(
      blockPublicAcls: (map['blockPublicAcls'] as bool).input(),
      blockPublicPolicy: (map['blockPublicPolicy'] as bool).input(),
      ignorePublicAcls: (map['ignorePublicAcls'] as bool).input(),
      restrictPublicBuckets: (map['restrictPublicBuckets'] as bool).input(),
    );
  }
}

