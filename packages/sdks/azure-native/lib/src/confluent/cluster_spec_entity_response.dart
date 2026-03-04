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
      'byok':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterByokEntityResponse,
            Map<String, dynamic>
          >(byok, (value) => value.toMap()),
      'cloud': ?cloud,
      'config':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterConfigEntityResponse,
            Map<String, dynamic>
          >(config, (value) => value.toMap()),
      'displayName': ?displayName,
      'environment':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterEnvironmentEntityResponse,
            Map<String, dynamic>
          >(environment, (value) => value.toMap()),
      'httpEndpoint': ?httpEndpoint,
      'kafkaBootstrapEndpoint': ?kafkaBootstrapEndpoint,
      'network':
          ?pulumi.Input.mapOptionalInputValue<
            ClusterNetworkEntityResponse,
            Map<String, dynamic>
          >(network, (value) => value.toMap()),
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory ClusterSpecEntityResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSpecEntityResponse(
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
          ClusterByokEntityResponse.fromMap(
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
          ClusterConfigEntityResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      environment: (() {
        final guardedValue = map['environment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterEnvironmentEntityResponse.fromMap(
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
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClusterNetworkEntityResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
