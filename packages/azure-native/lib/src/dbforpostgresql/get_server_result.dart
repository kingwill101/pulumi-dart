// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_response.dart';
import 'backup_response.dart';
import 'cluster_response.dart';
import 'data_encryption_response.dart';
import 'high_availability_response.dart';
import 'maintenance_window_response.dart';
import 'network_response.dart';
import 'private_endpoint_connection_response.dart';
import 'replica_response.dart';
import 'sku_response.dart';
import 'storage_response.dart';
import 'system_data_response.dart';
import 'user_assigned_identity_response.dart';

/// Result data returned by getServer.
class GetServerResult {
  /// Name of the login designated as the first password based administrator assigned to your instance of PostgreSQL. Must be specified the first time that you enable password based authentication on a server. Once set to a given value, it cannot be changed for the rest of the life of a server. If you disable password based authentication on a server which had it enabled, this password based role isn't deleted.
  final String? administratorLogin;
  /// Authentication configuration properties of a server.
  final AuthConfigResponse? authConfig;
  /// Availability zone of a server.
  final String? availabilityZone;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Backup properties of a server.
  final BackupResponse? backup;
  /// Cluster properties of a server.
  final ClusterResponse? cluster;
  /// Data encryption properties of a server.
  final DataEncryptionResponse? dataEncryption;
  /// Fully qualified domain name of a server.
  final String fullyQualifiedDomainName;
  /// High availability properties of a server.
  final HighAvailabilityResponse? highAvailability;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// User assigned managed identities assigned to the server.
  final UserAssignedIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// Maintenance window properties of a server.
  final MaintenanceWindowResponse? maintenanceWindow;
  /// Minor version of PostgreSQL database engine.
  final String minorVersion;
  /// The name of the resource
  final String name;
  /// Network properties of a server. Only required if you want your server to be integrated into a virtual network provided by customer.
  final NetworkResponse? network;
  /// List of private endpoint connections associated with the specified server.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// Read replica properties of a server. Required only in case that you want to promote a server.
  final ReplicaResponse? replica;
  /// Maximum number of read replicas allowed for a server.
  final int replicaCapacity;
  /// Role of the server in a replication set.
  final String? replicationRole;
  /// Compute tier and size of a server.
  final SkuResponse? sku;
  /// Identifier of the server to be used as the source of the new server. Required when 'createMode' is 'PointInTimeRestore', 'GeoRestore', 'Replica', or 'ReviveDropped'. This property is returned only when the target server is a read replica.
  final String? sourceServerResourceId;
  /// Possible states of a server.
  final String state;
  /// Storage properties of a server.
  final StorageResponse? storage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Major version of PostgreSQL database engine.
  final String? version;

  /// Creates a new [GetServerResult].
  /// [administratorLogin] Name of the login designated as the first password based administrator assigned to your instance of PostgreSQL. Must be specified the first time that you enable password based authentication on a server. Once set to a given value, it cannot be changed for the rest of the life of a server. If you disable password based authentication on a server which had it enabled, this password based role isn't deleted.
  /// [authConfig] Authentication configuration properties of a server.
  /// [availabilityZone] Availability zone of a server.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backup] Backup properties of a server.
  /// [cluster] Cluster properties of a server.
  /// [dataEncryption] Data encryption properties of a server.
  /// [fullyQualifiedDomainName] Fully qualified domain name of a server.
  /// [highAvailability] High availability properties of a server.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] User assigned managed identities assigned to the server.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Maintenance window properties of a server.
  /// [minorVersion] Minor version of PostgreSQL database engine.
  /// [name] The name of the resource
  /// [network] Network properties of a server. Only required if you want your server to be integrated into a virtual network provided by customer.
  /// [privateEndpointConnections] List of private endpoint connections associated with the specified server.
  /// [replica] Read replica properties of a server. Required only in case that you want to promote a server.
  /// [replicaCapacity] Maximum number of read replicas allowed for a server.
  /// [replicationRole] Role of the server in a replication set.
  /// [sku] Compute tier and size of a server.
  /// [sourceServerResourceId] Identifier of the server to be used as the source of the new server. Required when 'createMode' is 'PointInTimeRestore', 'GeoRestore', 'Replica', or 'ReviveDropped'. This property is returned only when the target server is a read replica.
  /// [state] Possible states of a server.
  /// [storage] Storage properties of a server.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Major version of PostgreSQL database engine.
  GetServerResult({
    this.administratorLogin,
    this.authConfig,
    this.availabilityZone,
    required this.azureApiVersion,
    this.backup,
    this.cluster,
    this.dataEncryption,
    required this.fullyQualifiedDomainName,
    this.highAvailability,
    required this.id,
    this.identity,
    required this.location,
    this.maintenanceWindow,
    required this.minorVersion,
    required this.name,
    this.network,
    required this.privateEndpointConnections,
    this.replica,
    required this.replicaCapacity,
    this.replicationRole,
    this.sku,
    this.sourceServerResourceId,
    required this.state,
    this.storage,
    required this.systemData,
    this.tags,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'authConfig': ?authConfig == null ? null : authConfig!.toMap(),
      'availabilityZone': ?availabilityZone,
      'azureApiVersion': azureApiVersion,
      'backup': ?backup == null ? null : backup!.toMap(),
      'cluster': ?cluster == null ? null : cluster!.toMap(),
      'dataEncryption': ?dataEncryption == null ? null : dataEncryption!.toMap(),
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'highAvailability': ?highAvailability == null ? null : highAvailability!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': location,
      'maintenanceWindow': ?maintenanceWindow == null ? null : maintenanceWindow!.toMap(),
      'minorVersion': minorVersion,
      'name': name,
      'network': ?network == null ? null : network!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'replica': ?replica == null ? null : replica!.toMap(),
      'replicaCapacity': replicaCapacity,
      'replicationRole': ?replicationRole,
      'sku': ?sku == null ? null : sku!.toMap(),
      'sourceServerResourceId': ?sourceServerResourceId,
      'state': state,
      'storage': ?storage == null ? null : storage!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      administratorLogin: map['administratorLogin'] == null ? null : map['administratorLogin'] as String,
      authConfig: map['authConfig'] == null ? null : AuthConfigResponse.fromMap((map['authConfig'] as Map).cast<String, dynamic>()),
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      backup: map['backup'] == null ? null : BackupResponse.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      cluster: map['cluster'] == null ? null : ClusterResponse.fromMap((map['cluster'] as Map).cast<String, dynamic>()),
      dataEncryption: map['dataEncryption'] == null ? null : DataEncryptionResponse.fromMap((map['dataEncryption'] as Map).cast<String, dynamic>()),
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] as String,
      highAvailability: map['highAvailability'] == null ? null : HighAvailabilityResponse.fromMap((map['highAvailability'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : UserAssignedIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null ? null : MaintenanceWindowResponse.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      minorVersion: map['minorVersion'] as String,
      name: map['name'] as String,
      network: map['network'] == null ? null : NetworkResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      replica: map['replica'] == null ? null : ReplicaResponse.fromMap((map['replica'] as Map).cast<String, dynamic>()),
      replicaCapacity: map['replicaCapacity'] as int,
      replicationRole: map['replicationRole'] == null ? null : map['replicationRole'] as String,
      sku: map['sku'] == null ? null : SkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      sourceServerResourceId: map['sourceServerResourceId'] == null ? null : map['sourceServerResourceId'] as String,
      state: map['state'] as String,
      storage: map['storage'] == null ? null : StorageResponse.fromMap((map['storage'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

