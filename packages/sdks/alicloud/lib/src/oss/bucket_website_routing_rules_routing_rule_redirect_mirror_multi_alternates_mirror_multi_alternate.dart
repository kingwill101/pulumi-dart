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
      mirrorMultiAlternateDstRegion: (() { final guardedValue = map['mirrorMultiAlternateDstRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorMultiAlternateNumber: (() { final guardedValue = map['mirrorMultiAlternateNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mirrorMultiAlternateUrl: (() { final guardedValue = map['mirrorMultiAlternateUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirrorMultiAlternateVpcId: (() { final guardedValue = map['mirrorMultiAlternateVpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

