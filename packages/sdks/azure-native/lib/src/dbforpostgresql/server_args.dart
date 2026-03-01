// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config.dart';
import 'backup_dbforpostgresql.dart';
import 'cluster.dart';
import 'data_encryption.dart';
import 'high_availability.dart';
import 'maintenance_window.dart';
import 'network.dart';
import 'replica.dart';
import 'sku.dart';
import 'storage.dart';
import 'user_assigned_identity.dart';

/// {@template pulumi_dbforpostgresql_server_args_doc}
/// The set of arguments for Server.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_server_args_doc}
class ServerArgs {
  /// Name of the login designated as the first password based administrator assigned to your instance of PostgreSQL. Must be specified the first time that you enable password based authentication on a server. Once set to a given value, it cannot be changed for the rest of the life of a server. If you disable password based authentication on a server which had it enabled, this password based role isn't deleted.
  final pulumi.Input<String>? administratorLogin;
  /// Password assigned to the administrator login. As long as password authentication is enabled, this password can be changed at any time.
  final pulumi.Input<String>? administratorLoginPassword;
  /// Authentication configuration properties of a server.
  final pulumi.Input<AuthConfig>? authConfig;
  /// Availability zone of a server.
  final pulumi.Input<String>? availabilityZone;
  /// Backup properties of a server.
  final pulumi.Input<BackupDbforpostgresql>? backup;
  /// Cluster properties of a server.
  final pulumi.Input<Cluster>? cluster;
  /// Creation mode of a new server.
  final pulumi.Input<String>? createMode;
  /// Data encryption properties of a server.
  final pulumi.Input<DataEncryption>? dataEncryption;
  /// High availability properties of a server.
  final pulumi.Input<HighAvailability>? highAvailability;
  /// User assigned managed identities assigned to the server.
  final pulumi.Input<UserAssignedIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Maintenance window properties of a server.
  final pulumi.Input<MaintenanceWindow>? maintenanceWindow;
  /// Network properties of a server. Only required if you want your server to be integrated into a virtual network provided by customer.
  final pulumi.Input<Network>? network;
  /// Creation time (in ISO8601 format) of the backup which you want to restore in the new server. It's required when 'createMode' is 'PointInTimeRestore', 'GeoRestore', or 'ReviveDropped'.
  final pulumi.Input<String>? pointInTimeUTC;
  /// Read replica properties of a server. Required only in case that you want to promote a server.
  final pulumi.Input<Replica>? replica;
  /// Role of the server in a replication set.
  final pulumi.Input<String>? replicationRole;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String>? serverName;
  /// Compute tier and size of a server.
  final pulumi.Input<Sku>? sku;
  /// Identifier of the server to be used as the source of the new server. Required when 'createMode' is 'PointInTimeRestore', 'GeoRestore', 'Replica', or 'ReviveDropped'. This property is returned only when the target server is a read replica.
  final pulumi.Input<String>? sourceServerResourceId;
  /// Storage properties of a server.
  final pulumi.Input<Storage>? storage;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Major version of PostgreSQL database engine.
  final pulumi.Input<String>? version;

  /// Creates a new [ServerArgs].
  /// [administratorLogin] Name of the login designated as the first password based administrator assigned to your instance of PostgreSQL. Must be specified the first time that you enable password based authentication on a server. Once set to a given value, it cannot be changed for the rest of the life of a server. If you disable password based authentication on a server which had it enabled, this password based role isn't deleted.
  /// [administratorLoginPassword] Password assigned to the administrator login. As long as password authentication is enabled, this password can be changed at any time.
  /// [authConfig] Authentication configuration properties of a server.
  /// [availabilityZone] Availability zone of a server.
  /// [backup] Backup properties of a server.
  /// [cluster] Cluster properties of a server.
  /// [createMode] Creation mode of a new server.
  /// [dataEncryption] Data encryption properties of a server.
  /// [highAvailability] High availability properties of a server.
  /// [identity] User assigned managed identities assigned to the server.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Maintenance window properties of a server.
  /// [network] Network properties of a server. Only required if you want your server to be integrated into a virtual network provided by customer.
  /// [pointInTimeUTC] Creation time (in ISO8601 format) of the backup which you want to restore in the new server. It's required when 'createMode' is 'PointInTimeRestore', 'GeoRestore', or 'ReviveDropped'.
  /// [replica] Read replica properties of a server. Required only in case that you want to promote a server.
  /// [replicationRole] Role of the server in a replication set.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [sku] Compute tier and size of a server.
  /// [sourceServerResourceId] Identifier of the server to be used as the source of the new server. Required when 'createMode' is 'PointInTimeRestore', 'GeoRestore', 'Replica', or 'ReviveDropped'. This property is returned only when the target server is a read replica.
  /// [storage] Storage properties of a server.
  /// [tags] Resource tags.
  /// [version] Major version of PostgreSQL database engine.
  ServerArgs({
    pulumi.Output<String>? administratorLogin,
    pulumi.Output<String>? administratorLoginPassword,
    pulumi.Output<AuthConfig>? authConfig,
    pulumi.Output<String>? availabilityZone,
    pulumi.Output<BackupDbforpostgresql>? backup,
    pulumi.Output<Cluster>? cluster,
    pulumi.Output<String>? createMode,
    pulumi.Output<DataEncryption>? dataEncryption,
    pulumi.Output<HighAvailability>? highAvailability,
    pulumi.Output<UserAssignedIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<MaintenanceWindow>? maintenanceWindow,
    pulumi.Output<Network>? network,
    pulumi.Output<String>? pointInTimeUTC,
    pulumi.Output<Replica>? replica,
    pulumi.Output<String>? replicationRole,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? serverName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<String>? sourceServerResourceId,
    pulumi.Output<Storage>? storage,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
  }) :
      administratorLogin = pulumi.Input.asOptionalInput<String>(administratorLogin),
      administratorLoginPassword = pulumi.Input.asOptionalInput<String>(administratorLoginPassword),
      authConfig = pulumi.Input.asOptionalInput<AuthConfig>(authConfig),
      availabilityZone = pulumi.Input.asOptionalInput<String>(availabilityZone),
      backup = pulumi.Input.asOptionalInput<BackupDbforpostgresql>(backup),
      cluster = pulumi.Input.asOptionalInput<Cluster>(cluster),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      dataEncryption = pulumi.Input.asOptionalInput<DataEncryption>(dataEncryption),
      highAvailability = pulumi.Input.asOptionalInput<HighAvailability>(highAvailability),
      identity = pulumi.Input.asOptionalInput<UserAssignedIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceWindow = pulumi.Input.asOptionalInput<MaintenanceWindow>(maintenanceWindow),
      network = pulumi.Input.asOptionalInput<Network>(network),
      pointInTimeUTC = pulumi.Input.asOptionalInput<String>(pointInTimeUTC),
      replica = pulumi.Input.asOptionalInput<Replica>(replica),
      replicationRole = pulumi.Input.asOptionalInput<String>(replicationRole),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      sourceServerResourceId = pulumi.Input.asOptionalInput<String>(sourceServerResourceId),
      storage = pulumi.Input.asOptionalInput<Storage>(storage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'authConfig': ?pulumi.Input.mapOptionalInputValue<AuthConfig, Map<String, dynamic>>(authConfig, (value) => value.toMap()),
      'availabilityZone': ?availabilityZone,
      'backup': ?backup,
      'cluster': ?pulumi.Input.mapOptionalInputValue<Cluster, Map<String, dynamic>>(cluster, (value) => value.toMap()),
      'createMode': ?createMode,
      'dataEncryption': ?pulumi.Input.mapOptionalInputValue<DataEncryption, Map<String, dynamic>>(dataEncryption, (value) => value.toMap()),
      'highAvailability': ?pulumi.Input.mapOptionalInputValue<HighAvailability, Map<String, dynamic>>(highAvailability, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<UserAssignedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'maintenanceWindow': ?pulumi.Input.mapOptionalInputValue<MaintenanceWindow, Map<String, dynamic>>(maintenanceWindow, (value) => value.toMap()),
      'network': ?pulumi.Input.mapOptionalInputValue<Network, Map<String, dynamic>>(network, (value) => value.toMap()),
      'pointInTimeUTC': ?pointInTimeUTC,
      'replica': ?pulumi.Input.mapOptionalInputValue<Replica, Map<String, dynamic>>(replica, (value) => value.toMap()),
      'replicationRole': ?replicationRole,
      'resourceGroupName': resourceGroupName,
      'serverName': ?serverName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
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
      authConfig: map['authConfig'] == null ? null : pulumi.Output.create<AuthConfig>(AuthConfig.fromMap((map['authConfig'] as Map).cast<String, dynamic>())),
      availabilityZone: map['availabilityZone'] == null ? null : pulumi.Output.create<String>(map['availabilityZone'] as String),
      backup: map['backup'] == null ? null : pulumi.Output.create<BackupDbforpostgresql>(map['backup'] as BackupDbforpostgresql),
      cluster: map['cluster'] == null ? null : pulumi.Output.create<Cluster>(Cluster.fromMap((map['cluster'] as Map).cast<String, dynamic>())),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      dataEncryption: map['dataEncryption'] == null ? null : pulumi.Output.create<DataEncryption>(DataEncryption.fromMap((map['dataEncryption'] as Map).cast<String, dynamic>())),
      highAvailability: map['highAvailability'] == null ? null : pulumi.Output.create<HighAvailability>(HighAvailability.fromMap((map['highAvailability'] as Map).cast<String, dynamic>())),
      identity: map['identity'] == null ? null : pulumi.Output.create<UserAssignedIdentity>(UserAssignedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceWindow: map['maintenanceWindow'] == null ? null : pulumi.Output.create<MaintenanceWindow>(MaintenanceWindow.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>())),
      network: map['network'] == null ? null : pulumi.Output.create<Network>(Network.fromMap((map['network'] as Map).cast<String, dynamic>())),
      pointInTimeUTC: map['pointInTimeUTC'] == null ? null : pulumi.Output.create<String>(map['pointInTimeUTC'] as String),
      replica: map['replica'] == null ? null : pulumi.Output.create<Replica>(Replica.fromMap((map['replica'] as Map).cast<String, dynamic>())),
      replicationRole: map['replicationRole'] == null ? null : pulumi.Output.create<String>(map['replicationRole'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      sourceServerResourceId: map['sourceServerResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceServerResourceId'] as String),
      storage: map['storage'] == null ? null : pulumi.Output.create<Storage>(Storage.fromMap((map['storage'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

