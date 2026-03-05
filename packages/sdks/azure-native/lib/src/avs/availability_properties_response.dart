// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties describing private cloud availability zone distribution
class AvailabilityPropertiesResponse {
  /// The secondary availability zone for the private cloud
  final pulumi.Input<int>? secondaryZone;
  /// The availability strategy for the private cloud
  final pulumi.Input<String>? strategy;
  /// The primary availability zone for the private cloud
  final pulumi.Input<int>? zone;

  /// Creates a new [AvailabilityPropertiesResponse].
  /// [secondaryZone] The secondary availability zone for the private cloud
  /// [strategy] The availability strategy for the private cloud
  /// [zone] The primary availability zone for the private cloud
  AvailabilityPropertiesResponse({
    this.secondaryZone,
    this.strategy,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secondaryZone': ?secondaryZone,
      'strategy': ?strategy,
      'zone': ?zone,
    };
  }

  factory AvailabilityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityPropertiesResponse(
      secondaryZone: (() { final guardedValue = map['secondaryZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      strategy: (() { final guardedValue = map['strategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

