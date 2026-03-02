// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The specifications of the availability group replica configuration
class AvailabilityGroupConfigureResponse {
  /// Property that determines whether a given availability replica can run in synchronous-commit mode
  final pulumi.Input<String>? availabilityMode;
  /// The Availability Synchronization mode of the availability group replica.
  final pulumi.Input<String> availabilityModeDescription;
  /// Represents the user-specified priority for performing backups on this replica relative to the other replicas in the same availability group.
  final pulumi.Input<int>? backupPriority;
  /// Name of certificate to use for authentication. Required if any CERTIFICATE authentication modes are specified.
  final pulumi.Input<String>? certificateName;
  /// Permitted authentication modes for the mirroring endpoint.
  final pulumi.Input<String>? endpointAuthenticationMode;
  /// The login which will connect to the mirroring endpoint.
  final pulumi.Input<String>? endpointConnectLogin;
  /// Name of the mirroring endpoint URL
  final pulumi.Input<String>? endpointName;
  /// Mirroring endpoint URL of availability group replica
  final pulumi.Input<String>? endpointUrl;
  /// Property to set the failover mode of the availability group replica
  final pulumi.Input<String>? failoverMode;
  /// The failover mode of the availability group replica.
  final pulumi.Input<String> failoverModeDescription;
  /// Whether the primary replica should allow all connections or only READ_WRITE connections (disallowing ReadOnly connections)
  final pulumi.Input<String>? primaryAllowConnections;
  /// Whether the availability allows all connections or only read-write connections.
  final pulumi.Input<String> primaryRoleAllowConnectionsDescription;
  /// Connectivity endpoint (URL) of the read only availability replica.
  final pulumi.Input<String>? readOnlyRoutingUrl;
  /// Connectivity endpoint (URL) of the read write availability replica.
  final pulumi.Input<String>? readWriteRoutingUrl;
  /// Date that the replica was created.
  final pulumi.Input<String> replicaCreateDate;
  /// Date that the replica was modified.
  final pulumi.Input<String> replicaModifyDate;
  /// Whether the secondary replica should allow all connections, no connections, or only ReadOnly connections.
  final pulumi.Input<String>? secondaryAllowConnections;
  /// Whether an availability replica that is performing the secondary role (that is, a secondary replica) can accept connections from clients.
  final pulumi.Input<String> secondaryRoleAllowConnectionsDescription;
  /// Specifies how the secondary replica will be initially seeded. AUTOMATIC enables direct seeding. This method will seed the secondary replica over the network. This method does not require you to backup and restore a copy of the primary database on the replica. MANUAL specifies manual seeding (default). This method requires you to create a backup of the database on the primary replica and manually restore that backup on the secondary replica.
  final pulumi.Input<String>? seedingMode;
  /// Describes seeding mode.
  final pulumi.Input<String> seedingModeDescription;
  /// The time-out period of availability group session replica, in seconds.
  final pulumi.Input<int>? sessionTimeout;

  /// Creates a new [AvailabilityGroupConfigureResponse].
  /// [availabilityMode] Property that determines whether a given availability replica can run in synchronous-commit mode
  /// [availabilityModeDescription] The Availability Synchronization mode of the availability group replica.
  /// [backupPriority] Represents the user-specified priority for performing backups on this replica relative to the other replicas in the same availability group.
  /// [certificateName] Name of certificate to use for authentication. Required if any CERTIFICATE authentication modes are specified.
  /// [endpointAuthenticationMode] Permitted authentication modes for the mirroring endpoint.
  /// [endpointConnectLogin] The login which will connect to the mirroring endpoint.
  /// [endpointName] Name of the mirroring endpoint URL
  /// [endpointUrl] Mirroring endpoint URL of availability group replica
  /// [failoverMode] Property to set the failover mode of the availability group replica
  /// [failoverModeDescription] The failover mode of the availability group replica.
  /// [primaryAllowConnections] Whether the primary replica should allow all connections or only READ_WRITE connections (disallowing ReadOnly connections)
  /// [primaryRoleAllowConnectionsDescription] Whether the availability allows all connections or only read-write connections.
  /// [readOnlyRoutingUrl] Connectivity endpoint (URL) of the read only availability replica.
  /// [readWriteRoutingUrl] Connectivity endpoint (URL) of the read write availability replica.
  /// [replicaCreateDate] Date that the replica was created.
  /// [replicaModifyDate] Date that the replica was modified.
  /// [secondaryAllowConnections] Whether the secondary replica should allow all connections, no connections, or only ReadOnly connections.
  /// [secondaryRoleAllowConnectionsDescription] Whether an availability replica that is performing the secondary role (that is, a secondary replica) can accept connections from clients.
  /// [seedingMode] Specifies how the secondary replica will be initially seeded. AUTOMATIC enables direct seeding. This method will seed the secondary replica over the network. This method does not require you to backup and restore a copy of the primary database on the replica. MANUAL specifies manual seeding (default). This method requires you to create a backup of the database on the primary replica and manually restore that backup on the secondary replica.
  /// [seedingModeDescription] Describes seeding mode.
  /// [sessionTimeout] The time-out period of availability group session replica, in seconds.
  AvailabilityGroupConfigureResponse({
    this.availabilityMode,
    required this.availabilityModeDescription,
    this.backupPriority,
    this.certificateName,
    this.endpointAuthenticationMode,
    this.endpointConnectLogin,
    this.endpointName,
    this.endpointUrl,
    this.failoverMode,
    required this.failoverModeDescription,
    this.primaryAllowConnections,
    required this.primaryRoleAllowConnectionsDescription,
    this.readOnlyRoutingUrl,
    this.readWriteRoutingUrl,
    required this.replicaCreateDate,
    required this.replicaModifyDate,
    this.secondaryAllowConnections,
    required this.secondaryRoleAllowConnectionsDescription,
    this.seedingMode,
    required this.seedingModeDescription,
    this.sessionTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityMode': ?availabilityMode,
      'availabilityModeDescription': availabilityModeDescription,
      'backupPriority': ?backupPriority,
      'certificateName': ?certificateName,
      'endpointAuthenticationMode': ?endpointAuthenticationMode,
      'endpointConnectLogin': ?endpointConnectLogin,
      'endpointName': ?endpointName,
      'endpointUrl': ?endpointUrl,
      'failoverMode': ?failoverMode,
      'failoverModeDescription': failoverModeDescription,
      'primaryAllowConnections': ?primaryAllowConnections,
      'primaryRoleAllowConnectionsDescription': primaryRoleAllowConnectionsDescription,
      'readOnlyRoutingUrl': ?readOnlyRoutingUrl,
      'readWriteRoutingUrl': ?readWriteRoutingUrl,
      'replicaCreateDate': replicaCreateDate,
      'replicaModifyDate': replicaModifyDate,
      'secondaryAllowConnections': ?secondaryAllowConnections,
      'secondaryRoleAllowConnectionsDescription': secondaryRoleAllowConnectionsDescription,
      'seedingMode': ?seedingMode,
      'seedingModeDescription': seedingModeDescription,
      'sessionTimeout': ?sessionTimeout,
    };
  }

  factory AvailabilityGroupConfigureResponse.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupConfigureResponse(
      availabilityMode: map['availabilityMode'] == null ? null : (map['availabilityMode'] as String).input(),
      availabilityModeDescription: (map['availabilityModeDescription'] as String).input(),
      backupPriority: map['backupPriority'] == null ? null : (map['backupPriority'] as int).input(),
      certificateName: map['certificateName'] == null ? null : (map['certificateName'] as String).input(),
      endpointAuthenticationMode: map['endpointAuthenticationMode'] == null ? null : (map['endpointAuthenticationMode'] as String).input(),
      endpointConnectLogin: map['endpointConnectLogin'] == null ? null : (map['endpointConnectLogin'] as String).input(),
      endpointName: map['endpointName'] == null ? null : (map['endpointName'] as String).input(),
      endpointUrl: map['endpointUrl'] == null ? null : (map['endpointUrl'] as String).input(),
      failoverMode: map['failoverMode'] == null ? null : (map['failoverMode'] as String).input(),
      failoverModeDescription: (map['failoverModeDescription'] as String).input(),
      primaryAllowConnections: map['primaryAllowConnections'] == null ? null : (map['primaryAllowConnections'] as String).input(),
      primaryRoleAllowConnectionsDescription: (map['primaryRoleAllowConnectionsDescription'] as String).input(),
      readOnlyRoutingUrl: map['readOnlyRoutingUrl'] == null ? null : (map['readOnlyRoutingUrl'] as String).input(),
      readWriteRoutingUrl: map['readWriteRoutingUrl'] == null ? null : (map['readWriteRoutingUrl'] as String).input(),
      replicaCreateDate: (map['replicaCreateDate'] as String).input(),
      replicaModifyDate: (map['replicaModifyDate'] as String).input(),
      secondaryAllowConnections: map['secondaryAllowConnections'] == null ? null : (map['secondaryAllowConnections'] as String).input(),
      secondaryRoleAllowConnectionsDescription: (map['secondaryRoleAllowConnectionsDescription'] as String).input(),
      seedingMode: map['seedingMode'] == null ? null : (map['seedingMode'] as String).input(),
      seedingModeDescription: (map['seedingModeDescription'] as String).input(),
      sessionTimeout: map['sessionTimeout'] == null ? null : (map['sessionTimeout'] as int).input(),
    );
  }
}

