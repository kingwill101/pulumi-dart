// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiRegionAccessPointDetailsPublicAccessBlock {
  final pulumi.Input<bool>? blockPublicAcls;
  final pulumi.Input<bool>? blockPublicPolicy;
  final pulumi.Input<bool>? ignorePublicAcls;
  final pulumi.Input<bool>? restrictPublicBuckets;

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
      blockPublicAcls: map['blockPublicAcls'] == null ? null : ((map['blockPublicAcls'] as bool).input()).input(),
      blockPublicPolicy: map['blockPublicPolicy'] == null ? null : ((map['blockPublicPolicy'] as bool).input()).input(),
      ignorePublicAcls: map['ignorePublicAcls'] == null ? null : ((map['ignorePublicAcls'] as bool).input()).input(),
      restrictPublicBuckets: map['restrictPublicBuckets'] == null ? null : ((map['restrictPublicBuckets'] as bool).input()).input(),
    );
  }
}

