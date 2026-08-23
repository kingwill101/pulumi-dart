// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultitenantDistributionOriginOriginShield {
  /// Whether Origin Shield is enabled.
  final pulumi.Input<bool> enabled;
  /// AWS Region for Origin Shield. Required when `enabled` is `true`.
  final pulumi.Input<String>? originShieldRegion;

  /// Creates a new [MultitenantDistributionOriginOriginShield].
  /// [enabled] Whether Origin Shield is enabled.
  /// [originShieldRegion] AWS Region for Origin Shield. Required when `enabled` is `true`.
  const MultitenantDistributionOriginOriginShield({
    required this.enabled,
    this.originShieldRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'originShieldRegion': ?originShieldRegion,
    };
  }

  factory MultitenantDistributionOriginOriginShield.fromMap(Map<String, dynamic> map) {
    return MultitenantDistributionOriginOriginShield(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      originShieldRegion: (() { final guardedValue = map['originShieldRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
