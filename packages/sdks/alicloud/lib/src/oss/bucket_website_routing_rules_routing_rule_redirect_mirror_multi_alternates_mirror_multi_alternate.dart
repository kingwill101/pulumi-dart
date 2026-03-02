// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate {
  /// Mirroring back-to-source multi-station Region
  final pulumi.Input<String>? mirrorMultiAlternateDstRegion;
  /// Image back-to-source multi-source station serial number
  final pulumi.Input<int>? mirrorMultiAlternateNumber;
  /// Mirroring back-to-source multi-source site URL
  final pulumi.Input<String>? mirrorMultiAlternateUrl;
  /// Mirroring back-to-source multi-source VpcId
  final pulumi.Input<String>? mirrorMultiAlternateVpcId;

  /// Creates a new [BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate].
  /// [mirrorMultiAlternateDstRegion] Mirroring back-to-source multi-station Region
  /// [mirrorMultiAlternateNumber] Image back-to-source multi-source station serial number
  /// [mirrorMultiAlternateUrl] Mirroring back-to-source multi-source site URL
  /// [mirrorMultiAlternateVpcId] Mirroring back-to-source multi-source VpcId
  BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate({
    this.mirrorMultiAlternateDstRegion,
    this.mirrorMultiAlternateNumber,
    this.mirrorMultiAlternateUrl,
    this.mirrorMultiAlternateVpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mirrorMultiAlternateDstRegion': ?mirrorMultiAlternateDstRegion,
      'mirrorMultiAlternateNumber': ?mirrorMultiAlternateNumber,
      'mirrorMultiAlternateUrl': ?mirrorMultiAlternateUrl,
      'mirrorMultiAlternateVpcId': ?mirrorMultiAlternateVpcId,
    };
  }

  factory BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate.fromMap(Map<String, dynamic> map) {
    return BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate(
      mirrorMultiAlternateDstRegion: map['mirrorMultiAlternateDstRegion'] == null ? null : (map['mirrorMultiAlternateDstRegion']! as String).input(),
      mirrorMultiAlternateNumber: map['mirrorMultiAlternateNumber'] == null ? null : (map['mirrorMultiAlternateNumber']! as int).input(),
      mirrorMultiAlternateUrl: map['mirrorMultiAlternateUrl'] == null ? null : (map['mirrorMultiAlternateUrl']! as String).input(),
      mirrorMultiAlternateVpcId: map['mirrorMultiAlternateVpcId'] == null ? null : (map['mirrorMultiAlternateVpcId']! as String).input(),
    );
  }
}

