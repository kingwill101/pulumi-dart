// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for fleetspace Account in the fleetspace.
class FleetspaceAccountPropertiesGlobalDatabaseAccountProperties {
  /// The location of  global database account in the Fleetspace Account.
  final String? armLocation;
  /// The resource identifier of global database account in the Fleetspace Account.
  final String? resourceId;

  /// Creates a new [FleetspaceAccountPropertiesGlobalDatabaseAccountProperties].
  /// [armLocation] The location of  global database account in the Fleetspace Account.
  /// [resourceId] The resource identifier of global database account in the Fleetspace Account.
  FleetspaceAccountPropertiesGlobalDatabaseAccountProperties({
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
      armLocation: map['armLocation'] == null ? null : map['armLocation'] as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
    );
  }
}

