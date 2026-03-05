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
      'backup': ?backup?.toMap(),
      'dataEncryption': ?dataEncryption?.toMap(),
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'highAvailability': ?highAvailability?.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'importSourceProperties': ?importSourceProperties?.toMap(),
      'location': location,
      'maintenanceWindow': ?maintenanceWindow?.toMap(),
      'name': name,
      'network': ?network?.toMap(),
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'replicaCapacity': replicaCapacity,
      'replicationRole': ?replicationRole,
      'sku': ?sku?.toMap(),
      'sourceServerResourceId': ?sourceServerResourceId,
      'state': state,
      'storage': ?storage?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'version': ?version,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return BackupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataEncryption: (() { final guardedValue = map['dataEncryption']; if (guardedValue == null) return null; return DataEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] as String,
      highAvailability: (() { final guardedValue = map['highAvailability']; if (guardedValue == null) return null; return HighAvailabilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return MySQLServerIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      importSourceProperties: (() { final guardedValue = map['importSourceProperties']; if (guardedValue == null) return null; return ImportSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return MaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return NetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      replicaCapacity: map['replicaCapacity'] as int,
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return MySQLServerSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceServerResourceId: (() { final guardedValue = map['sourceServerResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: map['state'] as String,
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return StorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

