// ignore_for_file: unused_element, unnecessary_cast

import 'subnet_reference.dart';

/// Defines load balancer frontend IP configuration properties.
class LBFrontendIPConfigurationResourceSettings {
  /// Gets or sets the frontend IP configuration name.
  final String? name;
  /// Gets or sets the IP address of the Load Balancer.This is only specified if a specific
  /// private IP address shall be allocated from the subnet specified in subnetRef.
  final String? privateIpAddress;
  /// Gets or sets PrivateIP allocation method (Static/Dynamic).
  final String? privateIpAllocationMethod;
  /// Defines reference to subnet.
  final SubnetReference? subnet;
  /// Gets or sets the csv list of zones.
  final String? zones;

  /// Creates a new [LBFrontendIPConfigurationResourceSettings].
  /// [name] Gets or sets the frontend IP configuration name.
  /// [privateIpAddress] Gets or sets the IP address of the Load Balancer.This is only specified if a specific
  /// [privateIpAllocationMethod] Gets or sets PrivateIP allocation method (Static/Dynamic).
  /// [subnet] Defines reference to subnet.
  /// [zones] Gets or sets the csv list of zones.
  LBFrontendIPConfigurationResourceSettings({
    this.name,
    this.privateIpAddress,
    this.privateIpAllocationMethod,
    this.subnet,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'subnet': ?subnet == null ? null : subnet!.toMap(),
      'zones': ?zones,
    };
  }

  factory LBFrontendIPConfigurationResourceSettings.fromMap(Map<String, dynamic> map) {
    return LBFrontendIPConfigurationResourceSettings(
      name: map['name'] == null ? null : map['name'] as String,
      privateIpAddress: map['privateIpAddress'] == null ? null : map['privateIpAddress'] as String,
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : map['privateIpAllocationMethod'] as String,
      subnet: map['subnet'] == null ? null : SubnetReference.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
      zones: map['zones'] == null ? null : map['zones'] as String,
    );
  }
}

