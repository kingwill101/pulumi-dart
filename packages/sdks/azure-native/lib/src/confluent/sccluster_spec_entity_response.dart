// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_config_entity_response.dart';
import 'sccluster_byok_entity_response.dart';
import 'sccluster_network_environment_entity_response.dart';

/// Spec of the cluster record
class SCClusterSpecEntityResponse {
  /// The Kafka API cluster endpoint
  final String? apiEndpoint;
  /// The availability zone configuration of the cluster
  final String? availability;
  /// Specification of the cluster byok
  final SCClusterByokEntityResponse? byok;
  /// The cloud service provider
  final String? cloud;
  /// Specification of the cluster configuration
  final ClusterConfigEntityResponse? config;
  /// Specification of the cluster environment
  final SCClusterNetworkEnvironmentEntityResponse? environment;
  /// The cluster HTTP request URL.
  final String? httpEndpoint;
  /// The bootstrap endpoint used by Kafka clients to connect to the cluster
  final String? kafkaBootstrapEndpoint;
  /// The name of the cluster
  final String? name;
  /// Specification of the cluster network
  final SCClusterNetworkEnvironmentEntityResponse? network;
  /// Stream governance configuration
  final String? package;
  /// The cloud service provider region
  final String? region;
  /// type of zone availability
  final String? zone;

  /// Creates a new [SCClusterSpecEntityResponse].
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
  SCClusterSpecEntityResponse({
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
      'byok': ?byok == null ? null : byok!.toMap(),
      'cloud': ?cloud,
      'config': ?config == null ? null : config!.toMap(),
      'environment': ?environment == null ? null : environment!.toMap(),
      'httpEndpoint': ?httpEndpoint,
      'kafkaBootstrapEndpoint': ?kafkaBootstrapEndpoint,
      'name': ?name,
      'network': ?network == null ? null : network!.toMap(),
      'package': ?package,
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory SCClusterSpecEntityResponse.fromMap(Map<String, dynamic> map) {
    return SCClusterSpecEntityResponse(
      apiEndpoint: map['apiEndpoint'] == null ? null : map['apiEndpoint'] as String,
      availability: map['availability'] == null ? null : map['availability'] as String,
      byok: map['byok'] == null ? null : SCClusterByokEntityResponse.fromMap((map['byok'] as Map).cast<String, dynamic>()),
      cloud: map['cloud'] == null ? null : map['cloud'] as String,
      config: map['config'] == null ? null : ClusterConfigEntityResponse.fromMap((map['config'] as Map).cast<String, dynamic>()),
      environment: map['environment'] == null ? null : SCClusterNetworkEnvironmentEntityResponse.fromMap((map['environment'] as Map).cast<String, dynamic>()),
      httpEndpoint: map['httpEndpoint'] == null ? null : map['httpEndpoint'] as String,
      kafkaBootstrapEndpoint: map['kafkaBootstrapEndpoint'] == null ? null : map['kafkaBootstrapEndpoint'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : SCClusterNetworkEnvironmentEntityResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
      package: map['package'] == null ? null : map['package'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

