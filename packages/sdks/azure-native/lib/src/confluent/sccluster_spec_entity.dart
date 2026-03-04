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
      'byok':
          ?pulumi.Input.mapOptionalInputValue<
            SCClusterByokEntity,
            Map<String, dynamic>
          >(byok, (value) => value.toMap()),
      'cloud': ?cloud,
      'config':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterConfigEntity,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'environment':
          ?pulumi.Input.mapOptionalInputValue<
            SCClusterNetworkEnvironmentEntity,
            Map<String, dynamic>
          >(environment, (value) => value.toMap()),
      'httpEndpoint': ?httpEndpoint,
      'kafkaBootstrapEndpoint': ?kafkaBootstrapEndpoint,
      'name': ?name,
      'network':
          ?pulumi.Input.mapOptionalInputValue<
            SCClusterNetworkEnvironmentEntity,
            Map<String, dynamic>
          >(network, (value) => value.toMap()),
      'package': ?package,
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory SCClusterSpecEntity.fromMap(Map<String, dynamic> map) {
    return SCClusterSpecEntity(
      apiEndpoint: (() {
        final guardedValue = map['apiEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      availability: (() {
        final guardedValue = map['availability'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      byok: (() {
        final guardedValue = map['byok'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SCClusterByokEntity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      cloud: (() {
        final guardedValue = map['cloud'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterConfigEntity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SCClusterNetworkEnvironmentEntity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      httpEndpoint: (() {
        final guardedValue = map['httpEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kafkaBootstrapEndpoint: (() {
        final guardedValue = map['kafkaBootstrapEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SCClusterNetworkEnvironmentEntity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      package: (() {
        final guardedValue = map['package'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      zone: (() {
        final guardedValue = map['zone'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
