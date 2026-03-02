// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_config.dart';
import 'extended_location_property.dart';

/// {@template pulumi_iotoperationsmq_broker_authorization_args_doc}
/// The set of arguments for BrokerAuthorization.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_broker_authorization_args_doc}
class BrokerAuthorizationArgs {
  /// Name of MQ broker/authorization resource
  final pulumi.Input<String>? authorizationName;
  /// The list of authorization policies supported by the Authorization Resource.
  final pulumi.Input<AuthorizationConfig> authorizationPolicies;
  /// Name of MQ broker resource
  final pulumi.Input<String> brokerName;
  /// Extended Location
  final pulumi.Input<ExtendedLocationProperty> extendedLocation;
  /// The array of listener Resources it supports.
  final pulumi.Input<List<String>> listenerRef;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Name of MQ resource
  final pulumi.Input<String> mqName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BrokerAuthorizationArgs].
  /// [authorizationName] Name of MQ broker/authorization resource
  /// [authorizationPolicies] The list of authorization policies supported by the Authorization Resource.
  /// [brokerName] Name of MQ broker resource
  /// [extendedLocation] Extended Location
  /// [listenerRef] The array of listener Resources it supports.
  /// [location] The geo-location where the resource lives
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  BrokerAuthorizationArgs({
    this.authorizationName,
    required this.authorizationPolicies,
    required this.brokerName,
    required this.extendedLocation,
    required this.listenerRef,
    this.location,
    required this.mqName,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': ?authorizationName,
      'authorizationPolicies': pulumi.Input.mapInputValue<AuthorizationConfig, Map<String, dynamic>>(authorizationPolicies, (value) => value.toMap()),
      'brokerName': brokerName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'listenerRef': listenerRef,
      'location': ?location,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory BrokerAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return BrokerAuthorizationArgs(
      authorizationName: map['authorizationName'] == null ? null : (map['authorizationName'] as String).input(),
      authorizationPolicies: (AuthorizationConfig.fromMap((map['authorizationPolicies'] as Map).cast<String, dynamic>())).input(),
      brokerName: (map['brokerName'] as String).input(),
      extendedLocation: (ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      listenerRef: ((map['listenerRef'] as List).cast<String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      mqName: (map['mqName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

