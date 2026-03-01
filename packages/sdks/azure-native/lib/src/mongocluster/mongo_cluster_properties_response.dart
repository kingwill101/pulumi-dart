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
  final AdministratorPropertiesResponse? administrator;
  /// The backup properties of the mongo cluster.
  final BackupPropertiesResponse? backup;
  /// The status of the mongo cluster.
  final String clusterStatus;
  /// The compute properties of the mongo cluster.
  final ComputePropertiesResponse? compute;
  /// The default mongo connection string for the cluster.
  final String connectionString;
  /// The high availability properties of the mongo cluster.
  final HighAvailabilityPropertiesResponse? highAvailability;
  /// The infrastructure version the cluster is provisioned on.
  final String infrastructureVersion;
  /// List of private endpoint connections.
  final List<String>? previewFeatures;
  /// List of private endpoint connections.
  final List<PrivateEndpointConnectionResponse> privateEndpointConnections;
  /// The provisioning state of the mongo cluster.
  final String provisioningState;
  /// Whether or not public endpoint access is allowed for this mongo cluster.
  final String? publicNetworkAccess;
  /// The replication properties for the mongo cluster
  final ReplicationPropertiesResponse replica;
  /// The Mongo DB server version. Defaults to the latest available version if not specified.
  final String? serverVersion;
  /// The sharding properties of the mongo cluster.
  final ShardingPropertiesResponse? sharding;
  /// The storage properties of the mongo cluster.
  final StoragePropertiesResponse? storage;

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
  MongoClusterPropertiesResponse({
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
      'administrator': ?administrator == null ? null : administrator!.toMap(),
      'backup': ?backup == null ? null : backup!.toMap(),
      'clusterStatus': clusterStatus,
      'compute': ?compute == null ? null : compute!.toMap(),
      'connectionString': connectionString,
      'highAvailability': ?highAvailability == null ? null : highAvailability!.toMap(),
      'infrastructureVersion': infrastructureVersion,
      'previewFeatures': ?previewFeatures,
      'privateEndpointConnections': pulumi.Input.encodeList<PrivateEndpointConnectionResponse, Map<String, dynamic>>(privateEndpointConnections, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replica': replica.toMap(),
      'serverVersion': ?serverVersion,
      'sharding': ?sharding == null ? null : sharding!.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
    };
  }

  factory MongoClusterPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MongoClusterPropertiesResponse(
      administrator: map['administrator'] == null ? null : AdministratorPropertiesResponse.fromMap((map['administrator'] as Map).cast<String, dynamic>()),
      backup: map['backup'] == null ? null : BackupPropertiesResponse.fromMap((map['backup'] as Map).cast<String, dynamic>()),
      clusterStatus: map['clusterStatus'] as String,
      compute: map['compute'] == null ? null : ComputePropertiesResponse.fromMap((map['compute'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] as String,
      highAvailability: map['highAvailability'] == null ? null : HighAvailabilityPropertiesResponse.fromMap((map['highAvailability'] as Map).cast<String, dynamic>()),
      infrastructureVersion: map['infrastructureVersion'] as String,
      previewFeatures: map['previewFeatures'] == null ? null : (map['previewFeatures'] as List).cast<String>(),
      privateEndpointConnections: pulumi.Input.decodeList<PrivateEndpointConnectionResponse>(map['privateEndpointConnections'], (value) => PrivateEndpointConnectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      replica: ReplicationPropertiesResponse.fromMap((map['replica'] as Map).cast<String, dynamic>()),
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
      sharding: map['sharding'] == null ? null : ShardingPropertiesResponse.fromMap((map['sharding'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : StoragePropertiesResponse.fromMap((map['storage'] as Map).cast<String, dynamic>()),
    );
  }
}

