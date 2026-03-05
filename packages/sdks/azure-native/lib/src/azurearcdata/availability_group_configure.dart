// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'primary_allow_connections.dart';
import 'secondary_allow_connections.dart';
import 'seeding_mode.dart';

/// The specifications of the availability group replica configuration
class AvailabilityGroupConfigure {
  /// Property that determines whether a given availability replica can run in synchronous-commit mode
  final pulumi.Input<String>? availabilityMode;
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
  /// Whether the primary replica should allow all connections or only READ_WRITE connections (disallowing ReadOnly connections)
  final pulumi.Input<PrimaryAllowConnections>? primaryAllowConnections;
  /// Connectivity endpoint (URL) of the read only availability replica.
  final pulumi.Input<String>? readOnlyRoutingUrl;
  /// Connectivity endpoint (URL) of the read write availability replica.
  final pulumi.Input<String>? readWriteRoutingUrl;
  /// Whether the secondary replica should allow all connections, no connections, or only ReadOnly connections.
  final pulumi.Input<SecondaryAllowConnections>? secondaryAllowConnections;
  /// Specifies how the secondary replica will be initially seeded. AUTOMATIC enables direct seeding. This method will seed the secondary replica over the network. This method does not require you to backup and restore a copy of the primary database on the replica. MANUAL specifies manual seeding (default). This method requires you to create a backup of the database on the primary replica and manually restore that backup on the secondary replica.
  final pulumi.Input<SeedingMode>? seedingMode;
  /// The time-out period of availability group session replica, in seconds.
  final pulumi.Input<int>? sessionTimeout;

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
      'primaryAllowConnections': ?pulumi.Input.mapOptionalInputValue<PrimaryAllowConnections, String>(primaryAllowConnections, (value) => value.wireValue),
      'readOnlyRoutingUrl': ?readOnlyRoutingUrl,
      'readWriteRoutingUrl': ?readWriteRoutingUrl,
      'secondaryAllowConnections': ?pulumi.Input.mapOptionalInputValue<SecondaryAllowConnections, String>(secondaryAllowConnections, (value) => value.wireValue),
      'seedingMode': ?pulumi.Input.mapOptionalInputValue<SeedingMode, String>(seedingMode, (value) => value.wireValue),
      'sessionTimeout': ?sessionTimeout,
    };
  }

  factory AvailabilityGroupConfigure.fromMap(Map<String, dynamic> map) {
    return AvailabilityGroupConfigure(
      availabilityMode: (() { final guardedValue = map['availabilityMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupPriority: (() { final guardedValue = map['backupPriority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      certificateName: (() { final guardedValue = map['certificateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointAuthenticationMode: (() { final guardedValue = map['endpointAuthenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointConnectLogin: (() { final guardedValue = map['endpointConnectLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointName: (() { final guardedValue = map['endpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverMode: (() { final guardedValue = map['failoverMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryAllowConnections: (() { final guardedValue = map['primaryAllowConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrimaryAllowConnections.fromValue(guardedValue as String)); })(),
      readOnlyRoutingUrl: (() { final guardedValue = map['readOnlyRoutingUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readWriteRoutingUrl: (() { final guardedValue = map['readWriteRoutingUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secondaryAllowConnections: (() { final guardedValue = map['secondaryAllowConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecondaryAllowConnections.fromValue(guardedValue as String)); })(),
      seedingMode: (() { final guardedValue = map['seedingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SeedingMode.fromValue(guardedValue as String)); })(),
      sessionTimeout: (() { final guardedValue = map['sessionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

