// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Public representation of one of the locations where a resource is provisioned.
class IotHubLocationDescriptionResponse {
  /// The name of the Azure region
  final pulumi.Input<String>? location;
  /// The role of the region, can be either primary or secondary. The primary region is where the IoT hub is currently provisioned. The secondary region is the Azure disaster recovery (DR) paired region and also the region where the IoT hub can failover to.
  final pulumi.Input<String>? role;

  /// Creates a new [IotHubLocationDescriptionResponse].
  /// [location] The name of the Azure region
  /// [role] The role of the region, can be either primary or secondary. The primary region is where the IoT hub is currently provisioned. The secondary region is the Azure disaster recovery (DR) paired region and also the region where the IoT hub can failover to.
  const IotHubLocationDescriptionResponse({
    this.location,
    this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'role': ?role,
    };
  }

  factory IotHubLocationDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return IotHubLocationDescriptionResponse(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
