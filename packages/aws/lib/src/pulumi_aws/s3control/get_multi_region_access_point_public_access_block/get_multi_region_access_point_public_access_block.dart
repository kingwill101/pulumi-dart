// ignore_for_file: unused_element, unnecessary_cast

class GetMultiRegionAccessPointPublicAccessBlock {
  /// Specifies whether Amazon S3 should block public access control lists (ACLs). When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes the following behavior:
  /// * PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public.
  /// * PUT Object calls fail if the request includes a public ACL.
  /// * PUT Bucket calls fail if the request includes a public ACL.
  final bool blockPublicAcls;

  /// Specifies whether Amazon S3 should block public bucket policies for buckets in this account. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes Amazon S3 to:
  /// * Reject calls to PUT Bucket policy if the specified bucket policy allows public access.
  final bool blockPublicPolicy;

  /// Specifies whether Amazon S3 should ignore public ACLs for buckets in this account. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> causes Amazon S3 to:
  /// * Ignore all public ACLs on buckets in this account and any objects that they contain.
  final bool ignorePublicAcls;

  /// Specifies whether Amazon S3 should restrict public bucket policies for buckets in this account. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>:
  /// * Only the bucket owner and AWS Services can access buckets with public policies.
  final bool restrictPublicBuckets;

  GetMultiRegionAccessPointPublicAccessBlock({
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

  factory GetMultiRegionAccessPointPublicAccessBlock.fromMap(
      Map<String, dynamic> map) {
    return GetMultiRegionAccessPointPublicAccessBlock(
      blockPublicAcls: map['blockPublicAcls'] as bool,
      blockPublicPolicy: map['blockPublicPolicy'] as bool,
      ignorePublicAcls: map['ignorePublicAcls'] as bool,
      restrictPublicBuckets: map['restrictPublicBuckets'] as bool,
    );
  }
}
