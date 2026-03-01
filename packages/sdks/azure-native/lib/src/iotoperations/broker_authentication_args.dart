// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_authentication_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_broker_authentication_args_doc}
/// The set of arguments for BrokerAuthentication.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_broker_authentication_args_doc}
class BrokerAuthenticationArgs {
  /// Name of Instance broker authentication resource
  final pulumi.Input<String>? authenticationName;
  /// Name of broker.
  final pulumi.Input<String> brokerName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<BrokerAuthenticationProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BrokerAuthenticationArgs].
  /// [authenticationName] Name of Instance broker authentication resource
  /// [brokerName] Name of broker.
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  BrokerAuthenticationArgs({
    pulumi.Output<String>? authenticationName,
    required pulumi.Output<String> brokerName,
    required pulumi.Output<ExtendedLocation> extendedLocation,
    required pulumi.Output<String> instanceName,
    pulumi.Output<BrokerAuthenticationProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authenticationName = pulumi.Input.asOptionalInput<String>(authenticationName),
      brokerName = pulumi.Input.asInput<String>(brokerName),
      extendedLocation = pulumi.Input.asInput<ExtendedLocation>(extendedLocation),
      instanceName = pulumi.Input.asInput<String>(instanceName),
      properties = pulumi.Input.asOptionalInput<BrokerAuthenticationProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationName': ?authenticationName,
      'brokerName': brokerName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BrokerAuthenticationProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BrokerAuthenticationArgs.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticationArgs(
      authenticationName: map['authenticationName'] == null ? null : pulumi.Output.create<String>(map['authenticationName'] as String),
      brokerName: pulumi.Output.create<String>(map['brokerName'] as String),
      extendedLocation: pulumi.Output.create<ExtendedLocation>(ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BrokerAuthenticationProperties>(BrokerAuthenticationProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

