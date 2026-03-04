// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id.dart';

/// The ip configurations for the private link service.
class IPConfiguration {
  /// The name of private link IP configuration.
  final pulumi.Input<String> name;

  /// Indicates whether this IP configuration is primary for the corresponding NIC.
  final pulumi.Input<bool>? primary;

  /// The IP address.
  final pulumi.Input<String>? privateIPAddress;

  /// The method that private IP address is allocated.
  final pulumi.Input<String>? privateIPAllocationMethod;

  /// The subnet resource id.
  final pulumi.Input<ResourceId>? subnet;

  /// Creates a new [IPConfiguration].
  /// [name] The name of private link IP configuration.
  /// [primary] Indicates whether this IP configuration is primary for the corresponding NIC.
  /// [privateIPAddress] The IP address.
  /// [privateIPAllocationMethod] The method that private IP address is allocated.
  /// [subnet] The subnet resource id.
  IPConfiguration({
    required this.name,
    this.primary,
    this.privateIPAddress,
    this.privateIPAllocationMethod,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primary': ?primary,
      'privateIPAddress': ?privateIPAddress,
      'privateIPAllocationMethod': ?privateIPAllocationMethod,
      'subnet':
          ?pulumi.Input.mapOptionalInputValue<ResourceId, Map<String, dynamic>>(
            subnet,
            (value) => value.toMap(),
          ),
    };
  }

  factory IPConfiguration.fromMap(Map<String, dynamic> map) {
    return IPConfiguration(
      name: pulumi.Input.fromValue(map['name'] as String),
      primary: (() {
        final guardedValue = map['primary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      privateIPAddress: (() {
        final guardedValue = map['privateIPAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privateIPAllocationMethod: (() {
        final guardedValue = map['privateIPAllocationMethod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnet: (() {
        final guardedValue = map['subnet'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ResourceId.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
