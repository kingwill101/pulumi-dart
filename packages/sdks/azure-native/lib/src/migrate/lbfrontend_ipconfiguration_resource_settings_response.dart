// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_reference_response.dart';

/// Defines load balancer frontend IP configuration properties.
class LBFrontendIPConfigurationResourceSettingsResponse {
  /// Gets or sets the frontend IP configuration name.
  final pulumi.Input<String>? name;
  /// Gets or sets the IP address of the Load Balancer.This is only specified if a specific
  /// private IP address shall be allocated from the subnet specified in subnetRef.
  final pulumi.Input<String>? privateIpAddress;
  /// Gets or sets PrivateIP allocation method (Static/Dynamic).
  final pulumi.Input<String>? privateIpAllocationMethod;
  /// Defines reference to subnet.
  final pulumi.Input<SubnetReferenceResponse>? subnet;
  /// Gets or sets the csv list of zones.
  final pulumi.Input<String>? zones;

  /// Creates a new [LBFrontendIPConfigurationResourceSettingsResponse].
  /// [name] Gets or sets the frontend IP configuration name.
  /// [privateIpAddress] Gets or sets the IP address of the Load Balancer.This is only specified if a specific
  /// [privateIpAllocationMethod] Gets or sets PrivateIP allocation method (Static/Dynamic).
  /// [subnet] Defines reference to subnet.
  /// [zones] Gets or sets the csv list of zones.
  LBFrontendIPConfigurationResourceSettingsResponse({
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
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubnetReferenceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
      'zones': ?zones,
    };
  }

  factory LBFrontendIPConfigurationResourceSettingsResponse.fromMap(Map<String, dynamic> map) {
    return LBFrontendIPConfigurationResourceSettingsResponse(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress'] as String).input(),
      privateIpAllocationMethod: map['privateIpAllocationMethod'] == null ? null : (map['privateIpAllocationMethod'] as String).input(),
      subnet: map['subnet'] == null ? null : (SubnetReferenceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>())).input(),
      zones: map['zones'] == null ? null : (map['zones'] as String).input(),
    );
  }
}

