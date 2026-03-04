// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionOriginOriginShield {
  /// Whether the distribution is enabled to accept end user requests for content.
  final pulumi.Input<bool> enabled;

  /// AWS Region for Origin Shield. To specify a region, use the region code, not the region name. For example, specify the US East (Ohio) region as `us-east-2`.
  final pulumi.Input<String>? originShieldRegion;

  /// Creates a new [DistributionOriginOriginShield].
  /// [enabled] Whether the distribution is enabled to accept end user requests for content.
  /// [originShieldRegion] AWS Region for Origin Shield. To specify a region, use the region code, not the region name. For example, specify the US East (Ohio) region as `us-east-2`.
  DistributionOriginOriginShield({
    required this.enabled,
    this.originShieldRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'originShieldRegion': ?originShieldRegion,
    };
  }

  factory DistributionOriginOriginShield.fromMap(Map<String, dynamic> map) {
    return DistributionOriginOriginShield(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      originShieldRegion: (() {
        final guardedValue = map['originShieldRegion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
