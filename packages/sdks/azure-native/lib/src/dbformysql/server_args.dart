// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup.dart';
import 'data_encryption.dart';
import 'high_availability.dart';
import 'import_source_properties.dart';
import 'maintenance_window.dart';
import 'my_sqlserver_identity.dart';
import 'my_sqlserver_sku.dart';
import 'network.dart';
import 'storage.dart';

/// {@template pulumi_dbformysql_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_dbformysql_server_args_doc}
class ServerArgs {
  /// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  final pulumi.Input<String>? administratorLogin;
  /// The password of the administrator login (required for server creation).
  final pulumi.Input<String>? administratorLoginPassword;
  /// availability Zone information of the server.
  final pulumi.Input<String>? availabilityZone;
  /// Backup related properties of a server.
  final pulumi.Input<Backup>? backup;
  /// The mode to create a new MySQL server.
  final pulumi.Input<String>? createMode;
  /// The Data Encryption for CMK.
  final pulumi.Input<DataEncryption>? dataEncryption;
  /// High availability related properties of a server.
  final pulumi.Input<HighAvailability>? highAvailability;
  /// The cmk identity for the server.
  final pulumi.Input<MySQLServerIdentity>? identity;
  /// Source properties for import from storage.
  final pulumi.Input<ImportSourceProperties>? importSourceProperties;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Maintenance window of a server.
  final pulumi.Input<MaintenanceWindow>? maintenanceWindow;
  /// Network related properties of a server.
  final pulumi.Input<Network>? network;
  /// The replication role.
  final pulumi.Input<String>? replicationRole;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Restore point creation time (ISO8601 format), specifying the time to restore from.
  final pulumi.Input<String>? restorePointInTime;
  /// The name of the server.
  final pulumi.Input<String>? serverName;
  /// The SKU (pricing tier) of the server.
  final pulumi.Input<MySQLServerSku>? sku;
  /// The source MySQL server id.
  final pulumi.Input<String>? sourceServerResourceId;
  /// Storage related properties of a server.
  final pulumi.Input<Storage>? storage;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Server version.
  final pulumi.Input<String>? version;

  /// Creates a new [ServerArgs].
  /// [administratorLogin] The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  /// [administratorLoginPassword] The password of the administrator login (required for server creation).
  /// [availabilityZone] availability Zone information of the server.
  /// [backup] Backup related properties of a server.
  /// [createMode] The mode to create a new MySQL server.
  /// [dataEncryption] The Data Encryption for CMK.
  /// [highAvailability] High availability related properties of a server.
  /// [identity] The cmk identity for the server.
  /// [importSourceProperties] Source properties for import from storage.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Maintenance window of a server.
  /// [network] Network related properties of a server.
  /// [replicationRole] The replication role.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restorePointInTime] Restore point creation time (ISO8601 format), specifying the time to restore from.
  /// [serverName] The name of the server.
  /// [sku] The SKU (pricing tier) of the server.
  /// [sourceServerResourceId] The source MySQL server id.
  /// [storage] Storage related properties of a server.
  /// [tags] Resource tags.
  /// [version] Server version.
  const ServerArgs({
    this.administratorLogin,
    this.administratorLoginPassword,
    this.availabilityZone,
    this.backup,
    this.createMode,
    this.dataEncryption,
    this.highAvailability,
    this.identity,
    this.importSourceProperties,
    this.location,
    this.maintenanceWindow,
    this.network,
    this.replicationRole,
    required this.resourceGroupName,
    this.restorePointInTime,
    this.serverName,
    this.sku,
    this.sourceServerResourceId,
    this.storage,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'availabilityZone': ?availabilityZone,
      'backup': ?pulumi.Input.mapOptionalInputValue<Backup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'createMode': ?createMode,
      'dataEncryption': ?pulumi.Input.mapOptionalInputValue<DataEncryption, Map<String, dynamic>>(dataEncryption, (value) => value.toMap()),
      'highAvailability': ?pulumi.Input.mapOptionalInputValue<HighAvailability, Map<String, dynamic>>(highAvailability, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<MySQLServerIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'importSourceProperties': ?pulumi.Input.mapOptionalInputValue<ImportSourceProperties, Map<String, dynamic>>(importSourceProperties, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<Network, Map<String, dynamic>>(network, (value) => value.toMap()),
      'replicationRole': ?replicationRole,
      'resourceGroupName': resourceGroupName,
      'restorePointInTime': ?restorePointInTime,
      'serverName': ?serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<MySQLServerSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'sourceServerResourceId': ?sourceServerResourceId,
      'storage': ?pulumi.Input.mapOptionalInputValue<Storage, Map<String, dynamic>>(storage, (value) => value.toMap()),
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory ServerArgs.fromMap(Map<String, dynamic> map) {
    return ServerArgs(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorLoginPassword: (() { final guardedValue = map['administratorLoginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Backup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataEncryption: (() { final guardedValue = map['dataEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      highAvailability: (() { final guardedValue = map['highAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HighAvailability.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MySQLServerIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      importSourceProperties: (() { final guardedValue = map['importSourceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImportSourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MaintenanceWindow.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Network.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restorePointInTime: (() { final guardedValue = map['restorePointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MySQLServerSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceServerResourceId: (() { final guardedValue = map['sourceServerResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Storage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
