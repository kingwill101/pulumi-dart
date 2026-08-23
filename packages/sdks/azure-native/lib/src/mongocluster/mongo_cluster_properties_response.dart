// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrator_properties_response.dart';
import 'backup_properties_response.dart';
import 'compute_properties_response.dart';
import 'high_availability_properties_response.dart';
import 'private_endpoint_connection_response.dart';
import 'replication_properties_response.dart';
import 'sharding_properties_response.dart';
import 'storage_properties_response.dart';

/// The properties of a mongo cluster.
class MongoClusterPropertiesResponse {
  /// The local administrator properties for the mongo cluster.
  final pulumi.Input<AdministratorPropertiesResponse>? administrator;
  /// The backup properties of the mongo cluster.
  final pulumi.Input<BackupPropertiesResponse>? backup;
  /// The status of the mongo cluster.
  final pulumi.Input<String> clusterStatus;
  /// The compute properties of the mongo cluster.
  final pulumi.Input<ComputePropertiesResponse>? compute;
  /// The default mongo connection string for the cluster.
  final pulumi.Input<String> connectionString;
  /// The high availability properties of the mongo cluster.
  final pulumi.Input<HighAvailabilityPropertiesResponse>? highAvailability;
  /// The infrastructure version the cluster is provisioned on.
  final pulumi.Input<String> infrastructureVersion;
  /// List of private endpoint connections.
  final pulumi.Input<List<String>>? previewFeatures;
  /// List of private endpoint connections.
  final pulumi.Input<List<PrivateEndpointConnectionResponse>> privateEndpointConnections;
  /// The provisioning state of the mongo cluster.
  final pulumi.Input<String> provisioningState;
  /// Whether or not public endpoint access is allowed for this mongo cluster.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The replication properties for the mongo cluster
  final pulumi.Input<ReplicationPropertiesResponse> replica;
  /// The Mongo DB server version. Defaults to the latest available version if not specified.
  final pulumi.Input<String>? serverVersion;
  /// The sharding properties of the mongo cluster.
  final pulumi.Input<ShardingPropertiesResponse>? sharding;
  /// The storage properties of the mongo cluster.
  final pulumi.Input<StoragePropertiesResponse>? storage;

  /// Creates a new [MongoClusterPropertiesResponse].
  /// [administrator] The local administrator properties for the mongo cluster.
  /// [backup] The backup properties of the mongo cluster.
  /// [clusterStatus] The status of the mongo cluster.
  /// [compute] The compute properties of the mongo cluster.
  /// [connectionString] The default mongo connection string for the cluster.
  /// [highAvailability] The high availability properties of the mongo cluster.
  /// [infrastructureVersion] The infrastructure version the cluster is provisioned on.
  /// [previewFeatures] List of private endpoint connections.
  /// [privateEndpointConnections] List of private endpoint connections.
  /// [provisioningState] The provisioning state of the mongo cluster.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this mongo cluster.
  /// [replica] The replication properties for the mongo cluster
  /// [serverVersion] The Mongo DB server version. Defaults to the latest available version if not specified.
  /// [sharding] The sharding properties of the mongo cluster.
  /// [storage] The storage properties of the mongo cluster.
  const MongoClusterPropertiesResponse({
    this.administrator,
    this.backup,
    required this.clusterStatus,
    this.compute,
    required this.connectionString,
    this.highAvailability,
    required this.infrastructureVersion,
    this.previewFeatures,
    required this.privateEndpointConnections,
    required this.provisioningState,
    this.publicNetworkAccess,
    required this.replica,
    this.serverVersion,
    this.sharding,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrator': ?pulumi.Input.mapOptionalInputValue<AdministratorPropertiesResponse, Map<String, dynamic>>(administrator, (value) => value.toMap()),
      'backup': ?pulumi.Input.mapOptionalInputValue<BackupPropertiesResponse, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'clusterStatus': clusterStatus,
      'compute': ?pulumi.Input.mapOptionalInputValue<ComputePropertiesResponse, Map<String, dynamic>>(compute, (value) => value.toMap()),
      'connectionString': connectionString,
      'highAvailability': ?pulumi.Input.mapOptionalInputValue<HighAvailabilityPropertiesResponse, Map<String, dynamic>>(highAvailability, (value) => value.toMap()),
      'infrastructureVersion': infrastructureVersion,
      'previewFeatures': ?previewFeatures,
      'privateEndpointConnections': pulumi.Input.mapInputValue<List<PrivateEndpointConnectionResponse>, List<Map<String, dynamic>>>(privateEndpointConnections, (value) => pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replica': pulumi.Input.mapInputValue<ReplicationPropertiesResponse, Map<String, dynamic>>(replica, (value) => value.toMap()),
      'serverVersion': ?serverVersion,
      'sharding': ?pulumi.Input.mapOptionalInputValue<ShardingPropertiesResponse, Map<String, dynamic>>(sharding, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<StoragePropertiesResponse, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory MongoClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MongoClusterPropertiesResponse(
      administrator: (() { final guardedValue = map['administrator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AdministratorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backup: (() { final guardedValue = map['backup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackupPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clusterStatus: pulumi.Input.fromValue(map['clusterStatus'] as String),
      compute: (() { final guardedValue = map['compute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ComputePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: pulumi.Input.fromValue(map['connectionString'] as String),
      highAvailability: (() { final guardedValue = map['highAvailability']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HighAvailabilityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureVersion: pulumi.Input.fromValue(map['infrastructureVersion'] as String),
      previewFeatures: (() { final guardedValue = map['previewFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateEndpointConnections: pulumi.Input.fromValue(pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections']!, (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>()))),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicNetworkAccess: (() { final guardedValue = map['publicNetworkAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replica: pulumi.Input.fromValue(ReplicationPropertiesResponse.fromMap((map['replica']! as Map).cast<String, dynamic>())),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharding: (() { final guardedValue = map['sharding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShardingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storage: (() { final guardedValue = map['storage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StoragePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
