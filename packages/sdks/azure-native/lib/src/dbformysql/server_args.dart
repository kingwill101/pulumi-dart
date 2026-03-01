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
  ServerArgs({
    pulumi.Output<String>? administratorLogin,
    pulumi.Output<String>? administratorLoginPassword,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<Backup>? backup,
    pulumi.Output<String>? createMode,
    pulumi.Output<DataEncryption>? dataEncryption,
    pulumi.Output<HighAvailability>? highAvailability,
    pulumi.Output<MySQLServerIdentity>? identity,
    pulumi.Output<ImportSourceProperties>? importSourceProperties,
    pulumi.Output<String>? location,
    pulumi.Output<MaintenanceWindow>? maintenanceWindow,
    pulumi.Output<Network>? network,
    pulumi.Output<String>? replicationRole,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? restorePointInTime,
    pulumi.Output<String>? serverName,
    pulumi.Output<MySQLServerSku>? sku,
    pulumi.Output<String>? sourceServerResourceId,
    pulumi.Output<Storage>? storage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      administratorLogin = pulumi.Input.asOptionalInput<String>(administratorLogin),
      administratorLoginPassword = pulumi.Input.asOptionalInput<String>(administratorLoginPassword),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      backup = pulumi.Input.asOptionalInput<Backup>(backup),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      dataEncryption = pulumi.Input.asOptionalInput<DataEncryption>(dataEncryption),
      highAvailability = pulumi.Input.asOptionalInput<HighAvailability>(highAvailability),
      identity = pulumi.Input.asOptionalInput<MySQLServerIdentity>(identity),
      importSourceProperties = pulumi.Input.asOptionalInput<ImportSourceProperties>(importSourceProperties),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asOptionalInput<MaintenanceWindow>(maintenanceWindow),
      network = pulumi.Input.asOptionalInput<Network>(network),
      replicationRole = pulumi.Input.asOptionalInput<String>(replicationRole),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restorePointInTime = pulumi.Input.asOptionalInput<String>(restorePointInTime),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      sku = pulumi.Input.asOptionalInput<MySQLServerSku>(sku),
      sourceServerResourceId = pulumi.Input.asOptionalInput<String>(sourceServerResourceId),
      storage = pulumi.Input.asOptionalInput<Storage>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      administratorLogin: map['administratorLogin'] == null ? null : pulumi.Output.create<String>(map['administratorLogin'] as String),
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : pulumi.Output.create<String>(map['administratorLoginPassword'] as String),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      backup: map['backup'] == null ? null : pulumi.Output.create<Backup>(Backup.fromMap((map['backup'] as Map).cast<String, dynamic>())),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      dataEncryption: map['dataEncryption'] == null ? null : pulumi.Output.create<DataEncryption>(DataEncryption.fromMap((map['dataEncryption'] as Map).cast<String, dynamic>())),
      highAvailability: map['highAvailability'] == null ? null : pulumi.Output.create<HighAvailability>(HighAvailability.fromMap((map['highAvailability'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<MySQLServerIdentity>(MySQLServerIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      importSourceProperties: map['importSourceProperties'] == null ? null : pulumi.Output.create<ImportSourceProperties>(ImportSourceProperties.fromMap((map['importSourceProperties'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<MaintenanceWindow>(MaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      network: map['network'] == null ? null : pulumi.Output.create<Network>(Network.fromMap((map['network'] as Map).cast<String, dynamic>())),
      replicationRole: map['replicationRole'] == null ? null : pulumi.Output.create<String>(map['replicationRole'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restorePointInTime: map['restorePointInTime'] == null ? null : pulumi.Output.create<String>(map['restorePointInTime'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<MySQLServerSku>(MySQLServerSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      sourceServerResourceId: map['sourceServerResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceServerResourceId'] as String),
      storage: map['storage'] == null ? null : pulumi.Output.create<Storage>(Storage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

