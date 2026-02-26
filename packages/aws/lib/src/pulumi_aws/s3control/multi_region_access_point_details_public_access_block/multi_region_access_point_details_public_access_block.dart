// ignore_for_file: unused_element, unnecessary_cast

class MultiRegionAccessPointDetailsPublicAccessBlock {
  final bool? blockPublicAcls;
  final bool? blockPublicPolicy;
  final bool? ignorePublicAcls;
  final bool? restrictPublicBuckets;

  MultiRegionAccessPointDetailsPublicAccessBlock({
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final blockPublicAclsValue = blockPublicAcls;
    if (blockPublicAclsValue != null) {
      map['blockPublicAcls'] = blockPublicAclsValue;
    }
    final blockPublicPolicyValue = blockPublicPolicy;
    if (blockPublicPolicyValue != null) {
      map['blockPublicPolicy'] = blockPublicPolicyValue;
    }
    final ignorePublicAclsValue = ignorePublicAcls;
    if (ignorePublicAclsValue != null) {
      map['ignorePublicAcls'] = ignorePublicAclsValue;
    }
    final restrictPublicBucketsValue = restrictPublicBuckets;
    if (restrictPublicBucketsValue != null) {
      map['restrictPublicBuckets'] = restrictPublicBucketsValue;
    }
    return map;
  }

  factory MultiRegionAccessPointDetailsPublicAccessBlock.fromMap(
      Map<String, dynamic> map) {
    return MultiRegionAccessPointDetailsPublicAccessBlock(
      blockPublicAcls: map['blockPublicAcls'] == null
          ? null
          : map['blockPublicAcls'] as bool,
      blockPublicPolicy: map['blockPublicPolicy'] == null
          ? null
          : map['blockPublicPolicy'] as bool,
      ignorePublicAcls: map['ignorePublicAcls'] == null
          ? null
          : map['ignorePublicAcls'] as bool,
      restrictPublicBuckets: map['restrictPublicBuckets'] == null
          ? null
          : map['restrictPublicBuckets'] as bool,
    );
  }
}
