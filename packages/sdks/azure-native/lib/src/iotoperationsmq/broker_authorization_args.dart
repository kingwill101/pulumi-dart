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
    pulumi.Output<String>? authorizationName,
    required pulumi.Output<AuthorizationConfig> authorizationPolicies,
    required pulumi.Output<String> brokerName,
    required pulumi.Output<ExtendedLocationProperty> extendedLocation,
    required pulumi.Output<List<String>> listenerRef,
    pulumi.Output<String>? location,
    required pulumi.Output<String> mqName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      authorizationName = pulumi.Input.asOptionalInput<String>(authorizationName),
      authorizationPolicies = pulumi.Input.asInput<AuthorizationConfig>(authorizationPolicies),
      brokerName = pulumi.Input.asInput<String>(brokerName),
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      listenerRef = pulumi.Input.asInput<List<String>>(listenerRef),
      location = pulumi.Input.asOptionalInput<String>(location),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      authorizationName: map['authorizationName'] == null ? null : pulumi.Output.create<String>(map['authorizationName'] as String),
      authorizationPolicies: pulumi.Output.create<AuthorizationConfig>(AuthorizationConfig.fromMap((map['authorizationPolicies'] as Map).cast<String, dynamic>())),
      brokerName: pulumi.Output.create<String>(map['brokerName'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocationProperty>(ExtendedLocationProperty.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      listenerRef: pulumi.Output.create<List<String>>((map['listenerRef'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mqName: pulumi.Output.create<String>(map['mqName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

