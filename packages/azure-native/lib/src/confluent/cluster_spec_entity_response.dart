// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_byok_entity_response.dart';
import 'cluster_config_entity_response.dart';
import 'cluster_environment_entity_response.dart';
import 'cluster_network_entity_response.dart';

/// Spec of the cluster record
class ClusterSpecEntityResponse {
  /// The Kafka API cluster endpoint
  final String? apiEndpoint;
  /// The availability zone configuration of the cluster
  final String? availability;
  /// Specification of the cluster
  final ClusterByokEntityResponse? byok;
  /// The cloud service provider
  final String? cloud;
  /// Specification of the cluster
  final ClusterConfigEntityResponse? config;
  /// The name of the cluster
  final String? displayName;
  /// Specification of the cluster
  final ClusterEnvironmentEntityResponse? environment;
  /// The cluster HTTP request URL.
  final String? httpEndpoint;
  /// The bootstrap endpoint used by Kafka clients to connect to the cluster
  final String? kafkaBootstrapEndpoint;
  /// Specification of the cluster
  final ClusterNetworkEntityResponse? network;
  /// The cloud service provider region
  final String? region;
  /// type of zone availability
  final String? zone;

  /// Creates a new [ClusterSpecEntityResponse].
  /// [apiEndpoint] The Kafka API cluster endpoint
  /// [availability] The availability zone configuration of the cluster
  /// [byok] Specification of the cluster
  /// [cloud] The cloud service provider
  /// [config] Specification of the cluster
  /// [displayName] The name of the cluster
  /// [environment] Specification of the cluster
  /// [httpEndpoint] The cluster HTTP request URL.
  /// [kafkaBootstrapEndpoint] The bootstrap endpoint used by Kafka clients to connect to the cluster
  /// [network] Specification of the cluster
  /// [region] The cloud service provider region
  /// [zone] type of zone availability
  ClusterSpecEntityResponse({
    this.apiEndpoint,
    this.availability,
    this.byok,
    this.cloud,
    this.config,
    this.displayName,
    this.environment,
    this.httpEndpoint,
    this.kafkaBootstrapEndpoint,
    this.network,
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
      'displayName': ?displayName,
      'environment': ?environment == null ? null : environment!.toMap(),
      'httpEndpoint': ?httpEndpoint,
      'kafkaBootstrapEndpoint': ?kafkaBootstrapEndpoint,
      'network': ?network == null ? null : network!.toMap(),
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory ClusterSpecEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSpecEntityResponse(
      apiEndpoint: map['apiEndpoint'] == null ? null : map['apiEndpoint'] as String,
      availability: map['availability'] == null ? null : map['availability'] as String,
      byok: map['byok'] == null ? null : ClusterByokEntityResponse.fromMap((map['byok'] as Map).cast<String, dynamic>()),
      cloud: map['cloud'] == null ? null : map['cloud'] as String,
      config: map['config'] == null ? null : ClusterConfigEntityResponse.fromMap((map['config'] as Map).cast<String, dynamic>()),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      environment: map['environment'] == null ? null : ClusterEnvironmentEntityResponse.fromMap((map['environment'] as Map).cast<String, dynamic>()),
      httpEndpoint: map['httpEndpoint'] == null ? null : map['httpEndpoint'] as String,
      kafkaBootstrapEndpoint: map['kafkaBootstrapEndpoint'] == null ? null : map['kafkaBootstrapEndpoint'] as String,
      network: map['network'] == null ? null : ClusterNetworkEntityResponse.fromMap((map['network'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

