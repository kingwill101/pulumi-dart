// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMultiRegionAccessPointsAccessPointPublicAccessBlock {
  /// Whether Amazon S3 should block public ACLs for buckets in this account.
  final pulumi.Input<bool> blockPublicAcls;
  /// Whether Amazon S3 should block public bucket policies for buckets in this account.
  final pulumi.Input<bool> blockPublicPolicy;
  /// Whether Amazon S3 should ignore public ACLs for buckets in this account.
  final pulumi.Input<bool> ignorePublicAcls;
  /// Whether Amazon S3 should restrict public bucket policies for buckets in this account.
  final pulumi.Input<bool> restrictPublicBuckets;

  /// Creates a new [GetMultiRegionAccessPointsAccessPointPublicAccessBlock].
  /// [blockPublicAcls] Whether Amazon S3 should block public ACLs for buckets in this account.
  /// [blockPublicPolicy] Whether Amazon S3 should block public bucket policies for buckets in this account.
  /// [ignorePublicAcls] Whether Amazon S3 should ignore public ACLs for buckets in this account.
  /// [restrictPublicBuckets] Whether Amazon S3 should restrict public bucket policies for buckets in this account.
  const GetMultiRegionAccessPointsAccessPointPublicAccessBlock({
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

  factory GetMultiRegionAccessPointsAccessPointPublicAccessBlock.fromMap(Map<String, dynamic> map) {
    return GetMultiRegionAccessPointsAccessPointPublicAccessBlock(
      blockPublicAcls: pulumi.Input.fromValue(map['blockPublicAcls'] as bool),
      blockPublicPolicy: pulumi.Input.fromValue(map['blockPublicPolicy'] as bool),
      ignorePublicAcls: pulumi.Input.fromValue(map['ignorePublicAcls'] as bool),
      restrictPublicBuckets: pulumi.Input.fromValue(map['restrictPublicBuckets'] as bool),
    );
  }
}

