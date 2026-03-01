// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authenticator_methods.dart';
import 'extended_location_property.dart';

/// {@template pulumi_iotoperationsmq_broker_authentication_args_doc}
/// The set of arguments for BrokerAuthentication.
/// {@endtemplate}
/// {@macro pulumi_iotoperationsmq_broker_authentication_args_doc}
class BrokerAuthenticationArgs {
  /// The list of authentication methods supported by the Authentication Resource. For each array element, NOTE - Enum only authenticator type supported.
  final pulumi.Input<List<BrokerAuthenticatorMethods>> authenticationMethods;
  /// Name of MQ broker/authentication resource
  final pulumi.Input<String>? authenticationName;
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

  /// Creates a new [BrokerAuthenticationArgs].
  /// [authenticationMethods] The list of authentication methods supported by the Authentication Resource. For each array element, NOTE - Enum only authenticator type supported.
  /// [authenticationName] Name of MQ broker/authentication resource
  /// [brokerName] Name of MQ broker resource
  /// [extendedLocation] Extended Location
  /// [listenerRef] The array of listener Resources it supports.
  /// [location] The geo-location where the resource lives
  /// [mqName] Name of MQ resource
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  BrokerAuthenticationArgs({
    required pulumi.Output<List<BrokerAuthenticatorMethods>> authenticationMethods,
    pulumi.Output<String>? authenticationName,
    required pulumi.Output<String> brokerName,
    required pulumi.Output<ExtendedLocationProperty> extendedLocation,
    required pulumi.Output<List<String>> listenerRef,
    pulumi.Output<String>? location,
    required pulumi.Output<String> mqName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      authenticationMethods = pulumi.Input.asInput<List<BrokerAuthenticatorMethods>>(authenticationMethods),
      authenticationName = pulumi.Input.asOptionalInput<String>(authenticationName),
      brokerName = pulumi.Input.asInput<String>(brokerName),
      extendedLocation = pulumi.Input.asInput<ExtendedLocationProperty>(extendedLocation),
      listenerRef = pulumi.Input.asInput<List<String>>(listenerRef),
      location = pulumi.Input.asOptionalInput<String>(location),
      mqName = pulumi.Input.asInput<String>(mqName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationMethods': pulumi.Input.mapInputValue<List<BrokerAuthenticatorMethods>, List<Map<String, dynamic>>>(authenticationMethods, (value) => pulumi.Input.encodeList<BrokerAuthenticatorMethods, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authenticationName': ?authenticationName,
      'brokerName': brokerName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocationProperty, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'listenerRef': listenerRef,
      'location': ?location,
      'mqName': mqName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory BrokerAuthenticationArgs.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticationArgs(
      authenticationMethods: pulumi.Output.create<List<BrokerAuthenticatorMethods>>(pulumi.Input.decodeList<BrokerAuthenticatorMethods>(map['authenticationMethods'], (value) => BrokerAuthenticatorMethods.fromMap((value as Map).cast<String, dynamic>()))),
      authenticationName: map['authenticationName'] == null ? null : pulumi.Output.create<String>(map['authenticationName'] as String),
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

