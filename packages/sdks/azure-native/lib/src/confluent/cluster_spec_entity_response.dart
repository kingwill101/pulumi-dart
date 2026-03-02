// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_byok_entity_response.dart';
import 'cluster_config_entity_response.dart';
import 'cluster_environment_entity_response.dart';
import 'cluster_network_entity_response.dart';

/// Spec of the cluster record
class ClusterSpecEntityResponse {
  /// The Kafka API cluster endpoint
  final pulumi.Input<String>? apiEndpoint;
  /// The availability zone configuration of the cluster
  final pulumi.Input<String>? availability;
  /// Specification of the cluster
  final pulumi.Input<ClusterByokEntityResponse>? byok;
  /// The cloud service provider
  final pulumi.Input<String>? cloud;
  /// Specification of the cluster
  final pulumi.Input<ClusterConfigEntityResponse>? config;
  /// The name of the cluster
  final pulumi.Input<String>? displayName;
  /// Specification of the cluster
  final pulumi.Input<ClusterEnvironmentEntityResponse>? environment;
  /// The cluster HTTP request URL.
  final pulumi.Input<String>? httpEndpoint;
  /// The bootstrap endpoint used by Kafka clients to connect to the cluster
  final pulumi.Input<String>? kafkaBootstrapEndpoint;
  /// Specification of the cluster
  final pulumi.Input<ClusterNetworkEntityResponse>? network;
  /// The cloud service provider region
  final pulumi.Input<String>? region;
  /// type of zone availability
  final pulumi.Input<String>? zone;

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
      'byok': ?pulumi.Input.mapOptionalInputValue<ClusterByokEntityResponse, Map<String, dynamic>>(byok, (value) => value.toMap()),
      'cloud': ?cloud,
      'config': ?pulumi.Input.mapOptionalInputValue<ClusterConfigEntityResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'displayName': ?displayName,
      'environment': ?pulumi.Input.mapOptionalInputValue<ClusterEnvironmentEntityResponse, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'httpEndpoint': ?httpEndpoint,
      'kafkaBootstrapEndpoint': ?kafkaBootstrapEndpoint,
      'network': ?pulumi.Input.mapOptionalInputValue<ClusterNetworkEntityResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory ClusterSpecEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSpecEntityResponse(
      apiEndpoint: map['apiEndpoint'] == null ? null : (map['apiEndpoint'] as String).input(),
      availability: map['availability'] == null ? null : (map['availability'] as String).input(),
      byok: map['byok'] == null ? null : (ClusterByokEntityResponse.fromMap((map['byok'] as Map).cast<String, dynamic>())).input(),
      cloud: map['cloud'] == null ? null : (map['cloud'] as String).input(),
      config: map['config'] == null ? null : (ClusterConfigEntityResponse.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      environment: map['environment'] == null ? null : (ClusterEnvironmentEntityResponse.fromMap((map['environment'] as Map).cast<String, dynamic>())).input(),
      httpEndpoint: map['httpEndpoint'] == null ? null : (map['httpEndpoint'] as String).input(),
      kafkaBootstrapEndpoint: map['kafkaBootstrapEndpoint'] == null ? null : (map['kafkaBootstrapEndpoint'] as String).input(),
      network: map['network'] == null ? null : (ClusterNetworkEntityResponse.fromMap((map['network'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      zone: map['zone'] == null ? null : (map['zone'] as String).input(),
    );
  }
}

