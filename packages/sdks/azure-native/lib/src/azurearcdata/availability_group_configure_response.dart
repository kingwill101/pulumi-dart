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
  const AvailabilityGroupConfigureResponse({
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
      availabilityMode: (() { final guardedValue = map['availabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityModeDescription: pulumi.Input.fromValue(map['availabilityModeDescription'] as String),
      backupPriority: (() { final guardedValue = map['backupPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointAuthenticationMode: (() { final guardedValue = map['endpointAuthenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointConnectLogin: (() { final guardedValue = map['endpointConnectLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverMode: (() { final guardedValue = map['failoverMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverModeDescription: pulumi.Input.fromValue(map['failoverModeDescription'] as String),
      primaryAllowConnections: (() { final guardedValue = map['primaryAllowConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryRoleAllowConnectionsDescription: pulumi.Input.fromValue(map['primaryRoleAllowConnectionsDescription'] as String),
      readOnlyRoutingUrl: (() { final guardedValue = map['readOnlyRoutingUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readWriteRoutingUrl: (() { final guardedValue = map['readWriteRoutingUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaCreateDate: pulumi.Input.fromValue(map['replicaCreateDate'] as String),
      replicaModifyDate: pulumi.Input.fromValue(map['replicaModifyDate'] as String),
      secondaryAllowConnections: (() { final guardedValue = map['secondaryAllowConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryRoleAllowConnectionsDescription: pulumi.Input.fromValue(map['secondaryRoleAllowConnectionsDescription'] as String),
      seedingMode: (() { final guardedValue = map['seedingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      seedingModeDescription: pulumi.Input.fromValue(map['seedingModeDescription'] as String),
      sessionTimeout: (() { final guardedValue = map['sessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

