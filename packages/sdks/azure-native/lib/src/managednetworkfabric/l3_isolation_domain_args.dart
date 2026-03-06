// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_route_configuration.dart';
import 'connected_subnet_route_policy.dart';

/// {@template pulumi_managednetworkfabric_l3_isolation_domain_args_doc}
/// The set of arguments for L3IsolationDomain.
/// {@endtemplate}
/// {@macro pulumi_managednetworkfabric_l3_isolation_domain_args_doc}
class L3IsolationDomainArgs {
  /// Aggregate route configurations.
  final pulumi.Input<AggregateRouteConfiguration>? aggregateRouteConfiguration;
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Connected Subnet RoutePolicy
  final pulumi.Input<ConnectedSubnetRoutePolicy>? connectedSubnetRoutePolicy;
  /// Name of the L3 Isolation Domain.
  final pulumi.Input<String>? l3IsolationDomainName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// ARM Resource ID of the Network Fabric.
  final pulumi.Input<String> networkFabricId;
  /// Advertise Connected Subnets. Ex: "True" | "False".
  final pulumi.Input<String>? redistributeConnectedSubnets;
  /// Advertise Static Routes. Ex: "True" | "False".
  final pulumi.Input<String>? redistributeStaticRoutes;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [L3IsolationDomainArgs].
  /// [aggregateRouteConfiguration] Aggregate route configurations.
  /// [annotation] Switch configuration description.
  /// [connectedSubnetRoutePolicy] Connected Subnet RoutePolicy
  /// [l3IsolationDomainName] Name of the L3 Isolation Domain.
  /// [location] The geo-location where the resource lives
  /// [networkFabricId] ARM Resource ID of the Network Fabric.
  /// [redistributeConnectedSubnets] Advertise Connected Subnets. Ex: "True" | "False".
  /// [redistributeStaticRoutes] Advertise Static Routes. Ex: "True" | "False".
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const L3IsolationDomainArgs({
    this.aggregateRouteConfiguration,
    this.annotation,
    this.connectedSubnetRoutePolicy,
    this.l3IsolationDomainName,
    this.location,
    required this.networkFabricId,
    this.redistributeConnectedSubnets,
    this.redistributeStaticRoutes,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregateRouteConfiguration': ?pulumi.Input.mapOptionalInputValue<AggregateRouteConfiguration, Map<String, dynamic>>(aggregateRouteConfiguration, (value) => value.toMap()),
      'annotation': ?annotation,
      'connectedSubnetRoutePolicy': ?pulumi.Input.mapOptionalInputValue<ConnectedSubnetRoutePolicy, Map<String, dynamic>>(connectedSubnetRoutePolicy, (value) => value.toMap()),
      'l3IsolationDomainName': ?l3IsolationDomainName,
      'location': ?location,
      'networkFabricId': networkFabricId,
      'redistributeConnectedSubnets': ?redistributeConnectedSubnets,
      'redistributeStaticRoutes': ?redistributeStaticRoutes,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory L3IsolationDomainArgs.fromMap(Map<String, dynamic> map) {
    return L3IsolationDomainArgs(
      aggregateRouteConfiguration: (() { final guardedValue = map['aggregateRouteConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AggregateRouteConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectedSubnetRoutePolicy: (() { final guardedValue = map['connectedSubnetRoutePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectedSubnetRoutePolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      l3IsolationDomainName: (() { final guardedValue = map['l3IsolationDomainName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkFabricId: pulumi.Input.fromValue(map['networkFabricId'] as String),
      redistributeConnectedSubnets: (() { final guardedValue = map['redistributeConnectedSubnets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redistributeStaticRoutes: (() { final guardedValue = map['redistributeStaticRoutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

