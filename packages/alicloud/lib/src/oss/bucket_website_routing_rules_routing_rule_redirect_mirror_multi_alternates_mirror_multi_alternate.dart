// ignore_for_file: unused_element, unnecessary_cast


class BucketWebsiteRoutingRulesRoutingRuleRedirectMirrorMultiAlternatesMirrorMultiAlternate {
  /// Mirroring back-to-source multi-station Region
  final String? mirrorMultiAlternateDstRegion;
  /// Image back-to-source multi-source station serial number
  final int? mirrorMultiAlternateNumber;
  /// Mirroring back-to-source multi-source site URL
  final String? mirrorMultiAlternateUrl;
  /// Mirroring back-to-source multi-source VpcId
  final String? mirrorMultiAlternateVpcId;

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
      mirrorMultiAlternateDstRegion: map['mirrorMultiAlternateDstRegion'] == null ? null : map['mirrorMultiAlternateDstRegion'] as String,
      mirrorMultiAlternateNumber: map['mirrorMultiAlternateNumber'] == null ? null : map['mirrorMultiAlternateNumber'] as int,
      mirrorMultiAlternateUrl: map['mirrorMultiAlternateUrl'] == null ? null : map['mirrorMultiAlternateUrl'] as String,
      mirrorMultiAlternateVpcId: map['mirrorMultiAlternateVpcId'] == null ? null : map['mirrorMultiAlternateVpcId'] as String,
    );
  }
}

