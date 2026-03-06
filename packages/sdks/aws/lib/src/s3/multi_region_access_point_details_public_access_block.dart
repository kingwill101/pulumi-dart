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
  const MultiRegionAccessPointDetailsPublicAccessBlock({
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
      blockPublicAcls: (() { final guardedValue = map['blockPublicAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blockPublicPolicy: (() { final guardedValue = map['blockPublicPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ignorePublicAcls: (() { final guardedValue = map['ignorePublicAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restrictPublicBuckets: (() { final guardedValue = map['restrictPublicBuckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

