// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_config_entity_response.dart';
import 'sccluster_byok_entity_response.dart';
import 'sccluster_network_environment_entity_response.dart';

/// Spec of the cluster record
class SCClusterSpecEntityResponse {
  /// The Kafka API cluster endpoint
  final pulumi.Input<String>? apiEndpoint;
  /// The availability zone configuration of the cluster
  final pulumi.Input<String>? availability;
  /// Specification of the cluster byok
  final pulumi.Input<SCClusterByokEntityResponse>? byok;
  /// The cloud service provider
  final pulumi.Input<String>? cloud;
  /// Specification of the cluster configuration
  final pulumi.Input<ClusterConfigEntityResponse>? config;
  /// Specification of the cluster environment
  final pulumi.Input<SCClusterNetworkEnvironmentEntityResponse>? environment;
  /// The cluster HTTP request URL.
  final pulumi.Input<String>? httpEndpoint;
  /// The bootstrap endpoint used by Kafka clients to connect to the cluster
  final pulumi.Input<String>? kafkaBootstrapEndpoint;
  /// The name of the cluster
  final pulumi.Input<String>? name;
  /// Specification of the cluster network
  final pulumi.Input<SCClusterNetworkEnvironmentEntityResponse>? network;
  /// Stream governance configuration
  final pulumi.Input<String>? package;
  /// The cloud service provider region
  final pulumi.Input<String>? region;
  /// type of zone availability
  final pulumi.Input<String>? zone;

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
      'byok': ?pulumi.Input.mapOptionalInputValue<SCClusterByokEntityResponse, Map<String, dynamic>>(byok, (value) => value.toMap()),
      'cloud': ?cloud,
      'config': ?pulumi.Input.mapOptionalInputValue<ClusterConfigEntityResponse, Map<String, dynamic>>(config, (value) => value.toMap()),
      'environment': ?pulumi.Input.mapOptionalInputValue<SCClusterNetworkEnvironmentEntityResponse, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'httpEndpoint': ?httpEndpoint,
      'kafkaBootstrapEndpoint': ?kafkaBootstrapEndpoint,
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<SCClusterNetworkEnvironmentEntityResponse, Map<String, dynamic>>(network, (value) => value.toMap()),
      'package': ?package,
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory SCClusterSpecEntityResponse.fromMap(Map<String, dynamic> map) {
    return SCClusterSpecEntityResponse(
      apiEndpoint: map['apiEndpoint'] == null ? null : (map['apiEndpoint']! as String).input(),
      availability: map['availability'] == null ? null : (map['availability']! as String).input(),
      byok: map['byok'] == null ? null : (SCClusterByokEntityResponse.fromMap((map['byok']! as Map).cast<String, dynamic>())).input(),
      cloud: map['cloud'] == null ? null : (map['cloud']! as String).input(),
      config: map['config'] == null ? null : (ClusterConfigEntityResponse.fromMap((map['config']! as Map).cast<String, dynamic>())).input(),
      environment: map['environment'] == null ? null : (SCClusterNetworkEnvironmentEntityResponse.fromMap((map['environment']! as Map).cast<String, dynamic>())).input(),
      httpEndpoint: map['httpEndpoint'] == null ? null : (map['httpEndpoint']! as String).input(),
      kafkaBootstrapEndpoint: map['kafkaBootstrapEndpoint'] == null ? null : (map['kafkaBootstrapEndpoint']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      network: map['network'] == null ? null : (SCClusterNetworkEnvironmentEntityResponse.fromMap((map['network']! as Map).cast<String, dynamic>())).input(),
      package: map['package'] == null ? null : (map['package']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

