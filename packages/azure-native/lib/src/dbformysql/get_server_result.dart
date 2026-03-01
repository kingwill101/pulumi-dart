// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_response.dart';
import 'data_encryption_response.dart';
import 'high_availability_response.dart';
import 'import_source_properties_response.dart';
import 'maintenance_window_response.dart';
import 'my_sqlserver_identity_response.dart';
import 'my_sqlserver_sku_response.dart';
import 'network_response.dart';
import 'private_endpoint_connection_response.dart';
import 'storage_response.dart';
import 'system_data_response.dart';

/// Result data returned by getServer.
class GetServerResult {
  /// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  final String? administratorLogin;
  /// availability Zone information of the server.
  final String? availabilityZone;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Backup related properties of a server.
  final BackupResponse? backup;
  /// The Data Encryption for CMK.
  final DataEncryptionResponse? dataEncryption;
  /// The fully qualified domain name of a server.
  final String fullyQualifiedDomainName;
  /// High availability related properties of a server.
  final HighAvailabilityResponse? highAvailability;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The cmk identity for the server.
  final MySQLServerIdentityResponse? identity;
  /// Source properties for import from storage.
  final ImportSourcePropertiesResponse? importSourceProperties;
  /// The geo-location where the resource lives
  final String location;
  /// Maintenance window of a server.
  final MaintenanceWindowResponse? maintenanceWindow;
  /// The name of the resource
  final String name;
  /// Network related properties of a server.
  final NetworkResponse? network;
  /// PrivateEndpointConnections related properties of a server.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The maximum number of replicas that a primary server can have.
  final int replicaCapacity;
  /// The replication role.
  final String? replicationRole;
  /// The SKU (pricing tier) of the server.
  final MySQLServerSkuResponse? sku;
  /// The source MySQL server id.
  final String? sourceServerResourceId;
  /// The state of a server.
  final String state;
  /// Storage related properties of a server.
  final StorageResponse? storage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Server version.
  final String? version;

  /// Creates a new [GetServerResult].
  /// [administratorLogin] The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  /// [availabilityZone] availability Zone information of the server.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backup] Backup related properties of a server.
  /// [dataEncryption] The Data Encryption for CMK.
  /// [fullyQualifiedDomainName] The fully qualified domain name of a server.
  /// [highAvailability] High availability related properties of a server.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The cmk identity for the server.
  /// [importSourceProperties] Source properties for import from storage.
  /// [location] The geo-location where the resource lives
  /// [maintenanceWindow] Maintenance window of a server.
  /// [name] The name of the resource
  /// [network] Network related properties of a server.
  /// [privateEndpointConnections] PrivateEndpointConnections related properties of a server.
  /// [replicaCapacity] The maximum number of replicas that a primary server can have.
  /// [replicationRole] The replication role.
  /// [sku] The SKU (pricing tier) of the server.
  /// [sourceServerResourceId] The source MySQL server id.
  /// [state] The state of a server.
  /// [storage] Storage related properties of a server.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Server version.
  GetServerResult({
    this.administratorLogin,
    this.availabilityZone,
    required this.azureApiVersion,
    this.backup,
    this.dataEncryption,
    required this.fullyQualifiedDomainName,
    this.highAvailability,
    required this.id,
    this.identity,
    this.importSourceProperties,
    required this.location,
    this.maintenanceWindow,
    required this.name,
    this.network,
    required this.privateEndpointConnections,
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
      'availabilityZone': ?availabilityZone,
      'azureApiVersion': azureApiVersion,
      'backup': ?backup == null ? null : backup!.toMap(),
      'dataEncryption': ?dataEncryption == null ? null : dataEncryption!.toMap(),
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'highAvailability': ?highAvailability == null ? null : highAvailability!.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'importSourceProperties': ?importSourceProperties == null ? null : importSourceProperties!.toMap(),
      'location': location,
      'maintenanceWindow': ?maintenanceWindow == null ? null : maintenanceWindow!.toMap(),
      'name': name,
      'network': ?network == null ? null : network!.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
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
      availabilityZone: map['availabilityZone'] == null ? null : map['availabilityZone'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      backup: map['backup'] == null ? null : BackupResponse.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      dataEncryption: map['dataEncryption'] == null ? null : DataEncryptionResponse.fromMap((map['dataEncryption'] as Map).cast<String, dynamic>()),
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] as String,
      highAvailability: map['highAvailability'] == null ? null : HighAvailabilityResponse.fromMap((map['highAvailability'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : MySQLServerIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      importSourceProperties: map['importSourceProperties'] == null ? null : ImportSourcePropertiesResponse.fromMap((map['importSourceProperties'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null ? null : MaintenanceWindowResponse.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      network: map['network'] == null ? null : NetworkResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      replicaCapacity: map['replicaCapacity'] as int,
      replicationRole: map['replicationRole'] == null ? null : map['replicationRole'] as String,
      sku: map['sku'] == null ? null : MySQLServerSkuResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
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

