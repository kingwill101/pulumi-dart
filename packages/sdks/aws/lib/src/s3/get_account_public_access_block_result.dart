// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccountPublicAccessBlock.
class GetAccountPublicAccessBlockResult {
  final String? accountId;
  /// Whether or not Amazon S3 should block public ACLs for buckets in this account is enabled. Returns as `true` or `false`.
  final bool? blockPublicAcls;
  /// Whether or not Amazon S3 should block public bucket policies for buckets in this account is enabled. Returns as `true` or `false`.
  final bool? blockPublicPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Whether or not Amazon S3 should ignore public ACLs for buckets in this account is enabled. Returns as `true` or `false`.
  final bool? ignorePublicAcls;
  /// Whether or not Amazon S3 should restrict public bucket policies for buckets in this account is enabled. Returns as `true` or `false`.
  final bool? restrictPublicBuckets;

  /// Creates a new [GetAccountPublicAccessBlockResult].
  /// [accountId] Optional.
  /// [blockPublicAcls] Whether or not Amazon S3 should block public ACLs for buckets in this account is enabled. Returns as `true` or `false`.
  /// [blockPublicPolicy] Whether or not Amazon S3 should block public bucket policies for buckets in this account is enabled. Returns as `true` or `false`.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignorePublicAcls] Whether or not Amazon S3 should ignore public ACLs for buckets in this account is enabled. Returns as `true` or `false`.
  /// [restrictPublicBuckets] Whether or not Amazon S3 should restrict public bucket policies for buckets in this account is enabled. Returns as `true` or `false`.
  const GetAccountPublicAccessBlockResult({
    this.accountId,
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.id,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'blockPublicAcls': ?blockPublicAcls,
      'blockPublicPolicy': ?blockPublicPolicy,
      'id': ?id,
      'ignorePublicAcls': ?ignorePublicAcls,
      'restrictPublicBuckets': ?restrictPublicBuckets,
    };
  }

  factory GetAccountPublicAccessBlockResult.fromMap(Map<String, dynamic> map) {
    return GetAccountPublicAccessBlockResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      blockPublicAcls: (() { final guardedValue = map['blockPublicAcls']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      blockPublicPolicy: (() { final guardedValue = map['blockPublicPolicy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ignorePublicAcls: (() { final guardedValue = map['ignorePublicAcls']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      restrictPublicBuckets: (() { final guardedValue = map['restrictPublicBuckets']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
