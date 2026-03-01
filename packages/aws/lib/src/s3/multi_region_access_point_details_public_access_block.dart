// ignore_for_file: unused_element, unnecessary_cast


class MultiRegionAccessPointDetailsPublicAccessBlock {
  final bool? blockPublicAcls;
  final bool? blockPublicPolicy;
  final bool? ignorePublicAcls;
  final bool? restrictPublicBuckets;

  /// Creates a new [MultiRegionAccessPointDetailsPublicAccessBlock].
  /// [blockPublicAcls] Optional.
  /// [blockPublicPolicy] Optional.
  /// [ignorePublicAcls] Optional.
  /// [restrictPublicBuckets] Optional.
  MultiRegionAccessPointDetailsPublicAccessBlock({
    this.blockPublicAcls,
    this.blockPublicPolicy,
    this.ignorePublicAcls,
    this.restrictPublicBuckets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockPublicAcls': ?blockPublicAcls,
      'blockPublicPolicy': ?blockPublicPolicy,
      'ignorePublicAcls': ?ignorePublicAcls,
      'restrictPublicBuckets': ?restrictPublicBuckets,
    };
  }

  factory MultiRegionAccessPointDetailsPublicAccessBlock.fromMap(Map<String, dynamic> map) {
    return MultiRegionAccessPointDetailsPublicAccessBlock(
      blockPublicAcls: map['blockPublicAcls'] == null ? null : map['blockPublicAcls'] as bool,
      blockPublicPolicy: map['blockPublicPolicy'] == null ? null : map['blockPublicPolicy'] as bool,
      ignorePublicAcls: map['ignorePublicAcls'] == null ? null : map['ignorePublicAcls'] as bool,
      restrictPublicBuckets: map['restrictPublicBuckets'] == null ? null : map['restrictPublicBuckets'] as bool,
    );
  }
}

