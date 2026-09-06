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
  final String? azureApiVersion;
  /// Backup properties of a server.
  final BackupResponse? backup;
  /// Cluster properties of a server.
  final ClusterResponse? cluster;
  /// Data encryption properties of a server.
  final DataEncryptionResponse? dataEncryption;
  /// Fully qualified domain name of a server.
  final String? fullyQualifiedDomainName;
  /// High availability properties of a server.
  final HighAvailabilityResponse? highAvailability;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// User assigned managed identities assigned to the server.
  final UserAssignedIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String? location;
  /// Maintenance window properties of a server.
  final MaintenanceWindowResponse? maintenanceWindow;
  /// Minor version of PostgreSQL database engine.
  final String? minorVersion;
  /// The name of the resource
  final String? name;
  /// Network properties of a server. Only required if you want your server to be integrated into a virtual network provided by customer.
  final NetworkResponse? network;
  /// List of private endpoint connections associated with the specified server.
  final List<PrivateEndpointConnectionResponse>? privateEndpointConnections;
  /// Read replica properties of a server. Required only in case that you want to promote a server.
  final ReplicaResponse? replica;
  /// Maximum number of read replicas allowed for a server.
  final int? replicaCapacity;
  /// Role of the server in a replication set.
  final String? replicationRole;
  /// Compute tier and size of a server.
  final SkuResponse? sku;
  /// Identifier of the server to be used as the source of the new server. Required when 'createMode' is 'PointInTimeRestore', 'GeoRestore', 'Replica', or 'ReviveDropped'. This property is returned only when the target server is a read replica.
  final String? sourceServerResourceId;
  /// Possible states of a server.
  final String? state;
  /// Storage properties of a server.
  final StorageResponse? storage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
    String? availabilityZone,
    this.azureApiVersion,
    this.backup,
    this.cluster,
    this.dataEncryption,
    this.fullyQualifiedDomainName,
    this.highAvailability,
    this.id,
    this.identity,
    this.location,
    this.maintenanceWindow,
    this.minorVersion,
    this.name,
    this.network,
    this.privateEndpointConnections,
    this.replica,
    this.replicaCapacity,
    this.replicationRole,
    this.sku,
    this.sourceServerResourceId,
    this.state,
    this.storage,
    this.systemData,
    this.tags,
    this.type,
    this.version,
  }) : availabilityZone = availabilityZone ?? '';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'authConfig': ?authConfig?.toMap(),
      'availabilityZone': ?availabilityZone,
      'azureApiVersion': ?azureApiVersion,
      'backup': ?backup?.toMap(),
      'cluster': ?cluster?.toMap(),
      'dataEncryption': ?dataEncryption?.toMap(),
      'fullyQualifiedDomainName': ?fullyQualifiedDomainName,
      'highAvailability': ?highAvailability?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'maintenanceWindow': ?maintenanceWindow?.toMap(),
      'minorVersion': ?minorVersion,
      'name': ?name,
      'network': ?network?.toMap(),
      'privateEndpointConnections': ?(() { final guardedValue = privateEndpointConnections; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'replica': ?replica?.toMap(),
      'replicaCapacity': ?replicaCapacity,
      'replicationRole': ?replicationRole,
      'sku': ?sku?.toMap(),
      'sourceServerResourceId': ?sourceServerResourceId,
      'state': ?state,
      'storage': ?storage?.toMap(),
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetServerResult.fromMap(Map<String, dynamic> map) {
    return GetServerResult(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authConfig: (() { final guardedValue = map['authConfig']; if (guardedValue == null) return null; return AuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return BackupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      cluster: (() { final guardedValue = map['cluster']; if (guardedValue == null) return null; return ClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataEncryption: (() { final guardedValue = map['dataEncryption']; if (guardedValue == null) return null; return DataEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      fullyQualifiedDomainName: (() { final guardedValue = map['fullyQualifiedDomainName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      highAvailability: (() { final guardedValue = map['highAvailability']; if (guardedValue == null) return null; return HighAvailabilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return UserAssignedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return MaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      minorVersion: (() { final guardedValue = map['minorVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return NetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateEndpointConnections: (() { final guardedValue = map['privateEndpointConnections']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(guardedValue, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      replica: (() { final guardedValue = map['replica']; if (guardedValue == null) return null; return ReplicaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      replicaCapacity: (() { final guardedValue = map['replicaCapacity']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      replicationRole: (() { final guardedValue = map['replicationRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sourceServerResourceId: (() { final guardedValue = map['sourceServerResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return StorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
