// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authorization_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_broker_authorization_args_doc}
/// The set of arguments for BrokerAuthorization.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_broker_authorization_args_doc}
class BrokerAuthorizationArgs {
  /// Name of Instance broker authorization resource
  final pulumi.Input<String>? authorizationName;
  /// Name of broker.
  final pulumi.Input<String> brokerName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<BrokerAuthorizationProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BrokerAuthorizationArgs].
  /// [authorizationName] Name of Instance broker authorization resource
  /// [brokerName] Name of broker.
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  BrokerAuthorizationArgs({
    pulumi.Output<String>? authorizationName,
    required pulumi.Output<String> brokerName,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    required pulumi.Output<String> instanceName,
    pulumi.Output<BrokerAuthorizationProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationName = pulumi.Input.asOptionalInput<String>(authorizationName),
      brokerName = pulumi.Input.asInput<String>(brokerName),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      properties = pulumi.Input.asOptionalInput<BrokerAuthorizationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationName': ?authorizationName,
      'brokerName': brokerName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BrokerAuthorizationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BrokerAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return BrokerAuthorizationArgs(
      authorizationName: map['authorizationName'] == null ? null : pulumi.Output.create<String>(map['authorizationName'] as String),
      brokerName: pulumi.Output.create<String>(map['brokerName'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BrokerAuthorizationProperties>(BrokerAuthorizationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

