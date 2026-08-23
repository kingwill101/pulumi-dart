// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMultiRegionAccessPointPublicAccessBlock {
  /// Whether Amazon S3 should block public access control lists (ACLs). When set to `true`, PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public, PUT Object calls fail if the request includes a public ACL, and PUT Bucket calls fail if the request includes a public ACL.
  final pulumi.Input<bool> blockPublicAcls;
  /// Whether Amazon S3 should block public bucket policies for buckets in this account. When set to `true`, Amazon S3 rejects calls to PUT Bucket policy if the specified bucket policy allows public access.
  final pulumi.Input<bool> blockPublicPolicy;
  /// Whether Amazon S3 should ignore public ACLs for buckets in this account. When set to `true`, Amazon S3 ignores all public ACLs on buckets in this account and any objects that they contain.
  final pulumi.Input<bool> ignorePublicAcls;
  /// Whether Amazon S3 should restrict public bucket policies for buckets in this account. When set to `true`, only the bucket owner and AWS Services can access buckets with public policies.
  final pulumi.Input<bool> restrictPublicBuckets;

  /// Creates a new [GetMultiRegionAccessPointPublicAccessBlock].
  /// [blockPublicAcls] Whether Amazon S3 should block public access control lists (ACLs). When set to `true`, PUT Bucket acl and PUT Object acl calls fail if the specified ACL is public, PUT Object calls fail if the request includes a public ACL, and PUT Bucket calls fail if the request includes a public ACL.
  /// [blockPublicPolicy] Whether Amazon S3 should block public bucket policies for buckets in this account. When set to `true`, Amazon S3 rejects calls to PUT Bucket policy if the specified bucket policy allows public access.
  /// [ignorePublicAcls] Whether Amazon S3 should ignore public ACLs for buckets in this account. When set to `true`, Amazon S3 ignores all public ACLs on buckets in this account and any objects that they contain.
  /// [restrictPublicBuckets] Whether Amazon S3 should restrict public bucket policies for buckets in this account. When set to `true`, only the bucket owner and AWS Services can access buckets with public policies.
  const GetMultiRegionAccessPointPublicAccessBlock({
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

  factory GetMultiRegionAccessPointPublicAccessBlock.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointPublicAccessBlock(
      blockPublicAcls: pulumi.Input.fromValue(map['blockPublicAcls'] as bool),
      blockPublicPolicy: pulumi.Input.fromValue(map['blockPublicPolicy'] as bool),
      ignorePublicAcls: pulumi.Input.fromValue(map['ignorePublicAcls'] as bool),
      restrictPublicBuckets: pulumi.Input.fromValue(map['restrictPublicBuckets'] as bool),
    );
  }
}
