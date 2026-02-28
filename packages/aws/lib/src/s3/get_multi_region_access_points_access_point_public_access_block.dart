// ignore_for_file: unused_element, unnecessary_cast

class GetMultiRegionAccessPointsAccessPointPublicAccessBlock {
  /// Whether Amazon S3 should block public ACLs for buckets in this account.
  final bool blockPublicAcls;

  /// Whether Amazon S3 should block public bucket policies for buckets in this account.
  final bool blockPublicPolicy;

  /// Whether Amazon S3 should ignore public ACLs for buckets in this account.
  final bool ignorePublicAcls;

  /// Whether Amazon S3 should restrict public bucket policies for buckets in this account.
  final bool restrictPublicBuckets;

  /// Creates a new [GetMultiRegionAccessPointsAccessPointPublicAccessBlock].
  /// [blockPublicAcls] Whether Amazon S3 should block public ACLs for buckets in this account.
  /// [blockPublicPolicy] Whether Amazon S3 should block public bucket policies for buckets in this account.
  /// [ignorePublicAcls] Whether Amazon S3 should ignore public ACLs for buckets in this account.
  /// [restrictPublicBuckets] Whether Amazon S3 should restrict public bucket policies for buckets in this account.
  GetMultiRegionAccessPointsAccessPointPublicAccessBlock({
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

  factory GetMultiRegionAccessPointsAccessPointPublicAccessBlock.fromMap(
      Map<String, dynamic> map) {
    return GetMultiRegionAccessPointsAccessPointPublicAccessBlock(
      blockPublicAcls: map['blockPublicAcls'] as bool,
      blockPublicPolicy: map['blockPublicPolicy'] as bool,
      ignorePublicAcls: map['ignorePublicAcls'] as bool,
      restrictPublicBuckets: map['restrictPublicBuckets'] as bool,
    );
  }
}
