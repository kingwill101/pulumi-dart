// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAccountPublicAccessBlock.
class GetAccountPublicAccessBlockResult {
  final String? accountId;

  /// Whether or not Amazon S3 should block public ACLs for buckets in this account is enabled. Returns as `true` or `false`.
  final bool blockPublicAcls;

  /// Whether or not Amazon S3 should block public bucket policies for buckets in this account is enabled. Returns as `true` or `false`.
  final bool blockPublicPolicy;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Whether or not Amazon S3 should ignore public ACLs for buckets in this account is enabled. Returns as `true` or `false`.
  final bool ignorePublicAcls;

  /// Whether or not Amazon S3 should restrict public bucket policies for buckets in this account is enabled. Returns as `true` or `false`.
  final bool restrictPublicBuckets;

  GetAccountPublicAccessBlockResult({
    this.accountId,
    required this.blockPublicAcls,
    required this.blockPublicPolicy,
    required this.id,
    required this.ignorePublicAcls,
    required this.restrictPublicBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['blockPublicAcls'] = blockPublicAcls;
    map['blockPublicPolicy'] = blockPublicPolicy;
    map['id'] = id;
    map['ignorePublicAcls'] = ignorePublicAcls;
    map['restrictPublicBuckets'] = restrictPublicBuckets;
    return map;
  }

  factory GetAccountPublicAccessBlockResult.fromMap(Map<String, dynamic> map) {
    return GetAccountPublicAccessBlockResult(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      blockPublicAcls: map['blockPublicAcls'] as bool,
      blockPublicPolicy: map['blockPublicPolicy'] as bool,
      id: map['id'] as String,
      ignorePublicAcls: map['ignorePublicAcls'] as bool,
      restrictPublicBuckets: map['restrictPublicBuckets'] as bool,
    );
  }
}
