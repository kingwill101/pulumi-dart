// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_listener_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_broker_listener_args_doc}
/// The set of arguments for BrokerListener.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_broker_listener_args_doc}
class BrokerListenerArgs {
  /// Name of broker.
  final pulumi.Input<String> brokerName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// Name of Instance broker listener resource
  final pulumi.Input<String>? listenerName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<BrokerListenerProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BrokerListenerArgs].
  /// [brokerName] Name of broker.
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [listenerName] Name of Instance broker listener resource
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const BrokerListenerArgs({
    required this.brokerName,
    required this.extendedLocation,
    required this.instanceName,
    this.listenerName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerName': brokerName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'listenerName': ?listenerName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BrokerListenerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BrokerListenerArgs.fromMap(Map<String, dynamic> map) {
    return BrokerListenerArgs(
      brokerName: pulumi.Input.fromValue(map['brokerName'] as String),
      extendedLocation: pulumi.Input.fromValue(ExtendedLocation.fromMap((map['extendedLocation']! as Map).cast<String, dynamic>())),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      listenerName: (() { final guardedValue = map['listenerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BrokerListenerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

