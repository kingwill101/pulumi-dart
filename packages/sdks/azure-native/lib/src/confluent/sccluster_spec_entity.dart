// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_entity.dart';
import 'sccluster_byok_entity.dart';
import 'sccluster_network_environment_entity.dart';

/// Spec of the cluster record
class SCClusterSpecEntity {
  /// The Kafka API cluster endpoint
  final pulumi.Input<String>? apiEndpoint;
  /// The availability zone configuration of the cluster
  final pulumi.Input<String>? availability;
  /// Specification of the cluster byok
  final pulumi.Input<SCClusterByokEntity>? byok;
  /// The cloud service provider
  final pulumi.Input<String>? cloud;
  /// Specification of the cluster configuration
  final pulumi.Input<ClusterConfigEntity>? config;
  /// Specification of the cluster environment
  final pulumi.Input<SCClusterNetworkEnvironmentEntity>? environment;
  /// The cluster HTTP request URL.
  final pulumi.Input<String>? httpEndpoint;
  /// The bootstrap endpoint used by Kafka clients to connect to the cluster
  final pulumi.Input<String>? kafkaBootstrapEndpoint;
  /// The name of the cluster
  final pulumi.Input<String>? name;
  /// Specification of the cluster network
  final pulumi.Input<SCClusterNetworkEnvironmentEntity>? network;
  /// Stream governance configuration
  final pulumi.Input<String>? package;
  /// The cloud service provider region
  final pulumi.Input<String>? region;
  /// type of zone availability
  final pulumi.Input<String>? zone;

  /// Creates a new [SCClusterSpecEntity].
  /// [apiEndpoint] The Kafka API cluster endpoint
  /// [availability] The availability zone configuration of the cluster
  /// [byok] Specification of the cluster byok
  /// [cloud] The cloud service provider
  /// [config] Specification of the cluster configuration
  /// [environment] Specification of the cluster environment
  /// [httpEndpoint] The cluster HTTP request URL.
  /// [kafkaBootstrapEndpoint] The bootstrap endpoint used by Kafka clients to connect to the cluster
  /// [name] The name of the cluster
  /// [network] Specification of the cluster network
  /// [package] Stream governance configuration
  /// [region] The cloud service provider region
  /// [zone] type of zone availability
  SCClusterSpecEntity({
    this.apiEndpoint,
    this.availability,
    this.byok,
    this.cloud,
    this.config,
    this.environment,
    this.httpEndpoint,
    this.kafkaBootstrapEndpoint,
    this.name,
    this.network,
    this.package,
    this.region,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?apiEndpoint,
      'availability': ?availability,
      'byok': ?pulumi.Input.mapOptionalInputValue<SCClusterByokEntity, Map<String, dynamic>>(byok, (value) => value.toMap()),
      'cloud': ?cloud,
      'config': ?pulumi.Input.mapOptionalInputValue<ClusterConfigEntity, Map<String, dynamic>>(config, (value) => value.toMap()),
      'environment': ?pulumi.Input.mapOptionalInputValue<SCClusterNetworkEnvironmentEntity, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'httpEndpoint': ?httpEndpoint,
      'kafkaBootstrapEndpoint': ?kafkaBootstrapEndpoint,
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<SCClusterNetworkEnvironmentEntity, Map<String, dynamic>>(network, (value) => value.toMap()),
      'package': ?package,
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory SCClusterSpecEntity.fromMap(Map<String, dynamic> map) {
    return SCClusterSpecEntity(
      apiEndpoint: map['apiEndpoint'] == null ? null : (map['apiEndpoint'] as String).input(),
      availability: map['availability'] == null ? null : (map['availability'] as String).input(),
      byok: map['byok'] == null ? null : (SCClusterByokEntity.fromMap((map['byok'] as Map).cast<String, dynamic>())).input(),
      cloud: map['cloud'] == null ? null : (map['cloud'] as String).input(),
      config: map['config'] == null ? null : (ClusterConfigEntity.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      environment: map['environment'] == null ? null : (SCClusterNetworkEnvironmentEntity.fromMap((map['environment'] as Map).cast<String, dynamic>())).input(),
      httpEndpoint: map['httpEndpoint'] == null ? null : (map['httpEndpoint'] as String).input(),
      kafkaBootstrapEndpoint: map['kafkaBootstrapEndpoint'] == null ? null : (map['kafkaBootstrapEndpoint'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (SCClusterNetworkEnvironmentEntity.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      package: map['package'] == null ? null : (map['package'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

