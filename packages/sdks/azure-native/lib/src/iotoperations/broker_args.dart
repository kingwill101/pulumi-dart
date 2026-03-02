// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'broker_properties.dart';
import 'extended_location.dart';

/// {@template pulumi_iotoperations_broker_args_doc}
/// The set of arguments for Broker.
/// {@endtemplate}
/// {@macro pulumi_iotoperations_broker_args_doc}
class BrokerArgs {
  /// Name of broker.
  final pulumi.Input<String>? brokerName;
  /// Edge location of the resource.
  final pulumi.Input<ExtendedLocation> extendedLocation;
  /// Name of instance.
  final pulumi.Input<String> instanceName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<BrokerProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [BrokerArgs].
  /// [brokerName] Name of broker.
  /// [extendedLocation] Edge location of the resource.
  /// [instanceName] Name of instance.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  BrokerArgs({
    this.brokerName,
    required this.extendedLocation,
    required this.instanceName,
    this.properties,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brokerName': ?brokerName,
      'extendedLocation': pulumi.Input.mapInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'instanceName': instanceName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BrokerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory BrokerArgs.fromMap(Map<String, dynamic> map) {
    return BrokerArgs(
      brokerName: map['brokerName'] == null ? null : (map['brokerName']! as String).input(),
      extendedLocation: (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      instanceName: (map['instanceName'] as String).input(),
      properties: map['properties'] == null ? null : (BrokerProperties.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

