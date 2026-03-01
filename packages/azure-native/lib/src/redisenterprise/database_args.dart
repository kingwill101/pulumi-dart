// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_properties_geo_replication.dart';
import 'module.dart';
import 'persistence.dart';

/// {@template pulumi_redisenterprise_database_args_doc}
/// The set of arguments for Database.
/// {@endtemplate}
/// {@macro pulumi_redisenterprise_database_args_doc}
class DatabaseArgs {
  /// This property can be Enabled/Disabled to allow or deny access with the current access keys. Can be updated even after database is created.
  final pulumi.Input<String>? accessKeysAuthentication;
  /// Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
  final pulumi.Input<String>? clientProtocol;
  /// The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  final pulumi.Input<String> clusterName;
  /// Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
  final pulumi.Input<String>? clusteringPolicy;
  /// The name of the Redis Enterprise database.
  final pulumi.Input<String>? databaseName;
  /// Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
  final pulumi.Input<String>? deferUpgrade;
  /// Redis eviction policy - default is VolatileLRU
  final pulumi.Input<String>? evictionPolicy;
  /// Optional set of properties to configure geo replication for this database.
  final pulumi.Input<DatabasePropertiesGeoReplication>? geoReplication;
  /// Optional set of redis modules to enable in this database - modules can only be added at creation time.
  final pulumi.Input<List<Module>>? modules;
  /// Persistence settings
  final pulumi.Input<Persistence>? persistence;
  /// TCP port of the database endpoint. Specified at create time. Defaults to an available port.
  final pulumi.Input<int>? port;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [DatabaseArgs].
  /// [accessKeysAuthentication] This property can be Enabled/Disabled to allow or deny access with the current access keys. Can be updated even after database is created.
  /// [clientProtocol] Specifies whether redis clients can connect using TLS-encrypted or plaintext redis protocols. Default is TLS-encrypted.
  /// [clusterName] The name of the Redis Enterprise cluster. Name must be 1-60 characters long. Allowed characters(A-Z, a-z, 0-9) and hyphen(-). There can be no leading nor trailing nor consecutive hyphens
  /// [clusteringPolicy] Clustering policy - default is OSSCluster. This property can be updated only if the current value is NoCluster. If the value is OSSCluster or EnterpriseCluster, it cannot be updated without deleting the database.
  /// [databaseName] The name of the Redis Enterprise database.
  /// [deferUpgrade] Option to defer upgrade when newest version is released - default is NotDeferred. Learn more: https://aka.ms/redisversionupgrade
  /// [evictionPolicy] Redis eviction policy - default is VolatileLRU
  /// [geoReplication] Optional set of properties to configure geo replication for this database.
  /// [modules] Optional set of redis modules to enable in this database - modules can only be added at creation time.
  /// [persistence] Persistence settings
  /// [port] TCP port of the database endpoint. Specified at create time. Defaults to an available port.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  DatabaseArgs({
    String? accessKeysAuthentication,
    String? clientProtocol,
    required String clusterName,
    String? clusteringPolicy,
    String? databaseName,
    String? deferUpgrade,
    String? evictionPolicy,
    DatabasePropertiesGeoReplication? geoReplication,
    List<Module>? modules,
    Persistence? persistence,
    int? port,
    required String resourceGroupName,
  }) :
      accessKeysAuthentication = pulumi.Input.asOptionalInput<String>(accessKeysAuthentication),
      clientProtocol = pulumi.Input.asOptionalInput<String>(clientProtocol),
      clusterName = pulumi.Input.asInput<String>(clusterName),
      clusteringPolicy = pulumi.Input.asOptionalInput<String>(clusteringPolicy),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      deferUpgrade = pulumi.Input.asOptionalInput<String>(deferUpgrade),
      evictionPolicy = pulumi.Input.asOptionalInput<String>(evictionPolicy),
      geoReplication = pulumi.Input.asOptionalInput<DatabasePropertiesGeoReplication>(geoReplication),
      modules = pulumi.Input.asOptionalInput<List<Module>>(modules),
      persistence = pulumi.Input.asOptionalInput<Persistence>(persistence),
      port = pulumi.Input.asOptionalInput<int>(port),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeysAuthentication': ?accessKeysAuthentication,
      'clientProtocol': ?clientProtocol,
      'clusterName': clusterName,
      'clusteringPolicy': ?clusteringPolicy,
      'databaseName': ?databaseName,
      'deferUpgrade': ?deferUpgrade,
      'evictionPolicy': ?evictionPolicy,
      'geoReplication': ?pulumi.Input.mapOptionalInputValue<DatabasePropertiesGeoReplication, Map<String, dynamic>>(geoReplication, (value) => value.toMap()),
      'modules': ?pulumi.Input.mapOptionalInputValue<List<Module>, List<Map<String, dynamic>>>(modules, (value) => pulumi.Input.encodeList<Module, Map<String, dynamic>>(value, (value) => value.toMap())),
      'persistence': ?pulumi.Input.mapOptionalInputValue<Persistence, Map<String, dynamic>>(persistence, (value) => value.toMap()),
      'port': ?port,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory DatabaseArgs.fromMap(Map<String, dynamic> map) {
    return DatabaseArgs(
      accessKeysAuthentication: map['accessKeysAuthentication'] == null ? null : map['accessKeysAuthentication'] as String,
      clientProtocol: map['clientProtocol'] == null ? null : map['clientProtocol'] as String,
      clusterName: map['clusterName'] as String,
      clusteringPolicy: map['clusteringPolicy'] == null ? null : map['clusteringPolicy'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      deferUpgrade: map['deferUpgrade'] == null ? null : map['deferUpgrade'] as String,
      evictionPolicy: map['evictionPolicy'] == null ? null : map['evictionPolicy'] as String,
      geoReplication: map['geoReplication'] == null ? null : DatabasePropertiesGeoReplication.fromMap((map['geoReplication'] as Map).cast<String, dynamic>()),
      modules: map['modules'] == null ? null : pulumi.Input.decodeList<Module>(map['modules'], (value) => Module.fromMap((value as Map).cast<String, dynamic>())),
      persistence: map['persistence'] == null ? null : Persistence.fromMap((map['persistence'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

