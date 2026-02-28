// ignore_for_file: unused_element, unnecessary_cast

class GetAccessPointPublicAccessBlockConfiguration {
  /// Whether Amazon S3 blocks public ACLs for buckets in this account.
  final bool blockPublicAcls;

  /// Whether Amazon S3 blocks public bucket policies for buckets in this account.
  final bool blockPublicPolicy;

  /// Whether Amazon S3 ignores public ACLs for buckets in this account.
  final bool ignorePublicAcls;

  /// Whether Amazon S3 restricts public bucket policies for buckets in this account.
  final bool restrictPublicBuckets;

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
    final map = <String, dynamic>{};
    map['blockPublicAcls'] = blockPublicAcls;
    map['blockPublicPolicy'] = blockPublicPolicy;
    map['ignorePublicAcls'] = ignorePublicAcls;
    map['restrictPublicBuckets'] = restrictPublicBuckets;
    return map;
  }

  factory GetAccessPointPublicAccessBlockConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetAccessPointPublicAccessBlockConfiguration(
      blockPublicAcls: map['blockPublicAcls'] as bool,
      blockPublicPolicy: map['blockPublicPolicy'] as bool,
      ignorePublicAcls: map['ignorePublicAcls'] as bool,
      restrictPublicBuckets: map['restrictPublicBuckets'] as bool,
    );
  }
}
