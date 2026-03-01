// ignore_for_file: unused_element, unnecessary_cast

import 'primary_allow_connections.dart';
import 'secondary_allow_connections.dart';
import 'seeding_mode.dart';

/// The specifications of the availability group replica configuration
class AvailabilityGroupConfigure {
  /// Property that determines whether a given availability replica can run in synchronous-commit mode
  final String? availabilityMode;
  /// Represents the user-specified priority for performing backups on this replica relative to the other replicas in the same availability group.
  final int? backupPriority;
  /// Name of certificate to use for authentication. Required if any CERTIFICATE authentication modes are specified.
  final String? certificateName;
  /// Permitted authentication modes for the mirroring endpoint.
  final String? endpointAuthenticationMode;
  /// The login which will connect to the mirroring endpoint.
  final String? endpointConnectLogin;
  /// Name of the mirroring endpoint URL
  final String? endpointName;
  /// Mirroring endpoint URL of availability group replica
  final String? endpointUrl;
  /// Property to set the failover mode of the availability group replica
  final String? failoverMode;
  /// Whether the primary replica should allow all connections or only READ_WRITE connections (disallowing ReadOnly connections)
  final PrimaryAllowConnections? primaryAllowConnections;
  /// Connectivity endpoint (URL) of the read only availability replica.
  final String? readOnlyRoutingUrl;
  /// Connectivity endpoint (URL) of the read write availability replica.
  final String? readWriteRoutingUrl;
  /// Whether the secondary replica should allow all connections, no connections, or only ReadOnly connections.
  final SecondaryAllowConnections? secondaryAllowConnections;
  /// Specifies how the secondary replica will be initially seeded. AUTOMATIC enables direct seeding. This method will seed the secondary replica over the network. This method does not require you to backup and restore a copy of the primary database on the replica. MANUAL specifies manual seeding (default). This method requires you to create a backup of the database on the primary replica and manually restore that backup on the secondary replica.
  final SeedingMode? seedingMode;
  /// The time-out period of availability group session replica, in seconds.
  final int? sessionTimeout;

  /// Creates a new [AvailabilityGroupConfigure].
  /// [availabilityMode] Property that determines whether a given availability replica can run in synchronous-commit mode
  /// [backupPriority] Represents the user-specified priority for performing backups on this replica relative to the other replicas in the same availability group.
  /// [certificateName] Name of certificate to use for authentication. Required if any CERTIFICATE authentication modes are specified.
  /// [endpointAuthenticationMode] Permitted authentication modes for the mirroring endpoint.
  /// [endpointConnectLogin] The login which will connect to the mirroring endpoint.
  /// [endpointName] Name of the mirroring endpoint URL
  /// [endpointUrl] Mirroring endpoint URL of availability group replica
  /// [failoverMode] Property to set the failover mode of the availability group replica
  /// [primaryAllowConnections] Whether the primary replica should allow all connections or only READ_WRITE connections (disallowing ReadOnly connections)
  /// [readOnlyRoutingUrl] Connectivity endpoint (URL) of the read only availability replica.
  /// [readWriteRoutingUrl] Connectivity endpoint (URL) of the read write availability replica.
  /// [secondaryAllowConnections] Whether the secondary replica should allow all connections, no connections, or only ReadOnly connections.
  /// [seedingMode] Specifies how the secondary replica will be initially seeded. AUTOMATIC enables direct seeding. This method will seed the secondary replica over the network. This method does not require you to backup and restore a copy of the primary database on the replica. MANUAL specifies manual seeding (default). This method requires you to create a backup of the database on the primary replica and manually restore that backup on the secondary replica.
  /// [sessionTimeout] The time-out period of availability group session replica, in seconds.
  AvailabilityGroupConfigure({
    this.availabilityMode,
    this.backupPriority,
    this.certificateName,
    this.endpointAuthenticationMode,
    this.endpointConnectLogin,
    this.endpointName,
    this.endpointUrl,
    this.failoverMode,
    this.primaryAllowConnections,
    this.readOnlyRoutingUrl,
    this.readWriteRoutingUrl,
    this.secondaryAllowConnections,
    this.seedingMode,
    this.sessionTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityMode': ?availabilityMode,
      'backupPriority': ?backupPriority,
      'certificateName': ?certificateName,
      'endpointAuthenticationMode': ?endpointAuthenticationMode,
      'endpointConnectLogin': ?endpointConnectLogin,
      'endpointName': ?endpointName,
      'endpointUrl': ?endpointUrl,
      'failoverMode': ?failoverMode,
      'primaryAllowConnections': ?primaryAllowConnections == null ? null : primaryAllowConnections!.value,
      'readOnlyRoutingUrl': ?readOnlyRoutingUrl,
      'readWriteRoutingUrl': ?readWriteRoutingUrl,
      'secondaryAllowConnections': ?secondaryAllowConnections == null ? null : secondaryAllowConnections!.value,
      'seedingMode': ?seedingMode == null ? null : seedingMode!.value,
      'sessionTimeout': ?sessionTimeout,
    };
  }

  factory AvailabilityGroupConfigure.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupConfigure(
      availabilityMode: map['availabilityMode'] == null ? null : map['availabilityMode'] as String,
      backupPriority: map['backupPriority'] == null ? null : map['backupPriority'] as int,
      certificateName: map['certificateName'] == null ? null : map['certificateName'] as String,
      endpointAuthenticationMode: map['endpointAuthenticationMode'] == null ? null : map['endpointAuthenticationMode'] as String,
      endpointConnectLogin: map['endpointConnectLogin'] == null ? null : map['endpointConnectLogin'] as String,
      endpointName: map['endpointName'] == null ? null : map['endpointName'] as String,
      endpointUrl: map['endpointUrl'] == null ? null : map['endpointUrl'] as String,
      failoverMode: map['failoverMode'] == null ? null : map['failoverMode'] as String,
      primaryAllowConnections: map['primaryAllowConnections'] == null ? null : PrimaryAllowConnections.fromValue(map['primaryAllowConnections'] as String),
      readOnlyRoutingUrl: map['readOnlyRoutingUrl'] == null ? null : map['readOnlyRoutingUrl'] as String,
      readWriteRoutingUrl: map['readWriteRoutingUrl'] == null ? null : map['readWriteRoutingUrl'] as String,
      secondaryAllowConnections: map['secondaryAllowConnections'] == null ? null : SecondaryAllowConnections.fromValue(map['secondaryAllowConnections'] as String),
      seedingMode: map['seedingMode'] == null ? null : SeedingMode.fromValue(map['seedingMode'] as String),
      sessionTimeout: map['sessionTimeout'] == null ? null : map['sessionTimeout'] as int,
    );
  }
}

