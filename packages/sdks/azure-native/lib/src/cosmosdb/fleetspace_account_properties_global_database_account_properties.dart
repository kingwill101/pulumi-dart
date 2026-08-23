// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for fleetspace Account in the fleetspace.
class FleetspaceAccountPropertiesGlobalDatabaseAccountProperties {
  /// The location of  global database account in the Fleetspace Account.
  final pulumi.Input<String>? armLocation;
  /// The resource identifier of global database account in the Fleetspace Account.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [FleetspaceAccountPropertiesGlobalDatabaseAccountProperties].
  /// [armLocation] The location of  global database account in the Fleetspace Account.
  /// [resourceId] The resource identifier of global database account in the Fleetspace Account.
  const FleetspaceAccountPropertiesGlobalDatabaseAccountProperties({
    this.armLocation,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'armLocation': ?armLocation,
      'resourceId': ?resourceId,
    };
  }

  factory FleetspaceAccountPropertiesGlobalDatabaseAccountProperties.fromMap(Map<String, dynamic> map) {
    return FleetspaceAccountPropertiesGlobalDatabaseAccountProperties(
      armLocation: (() { final guardedValue = map['armLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
