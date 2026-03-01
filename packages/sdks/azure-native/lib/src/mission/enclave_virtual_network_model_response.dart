// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_configuration_response.dart';

/// Enclave Virtual Network Properties
class EnclaveVirtualNetworkModelResponse {
  /// Allow Subnet Communication.
  final bool? allowSubnetCommunication;
  /// Custom CIDR Range.
  final String? customCidrRange;
  /// Network Name.
  final String? networkName;
  /// Network Size.
  final String? networkSize;
  /// Subnet Configurations.
  final List<SubnetConfigurationResponse>? subnetConfigurations;

  /// Creates a new [EnclaveVirtualNetworkModelResponse].
  /// [allowSubnetCommunication] Allow Subnet Communication.
  /// [customCidrRange] Custom CIDR Range.
  /// [networkName] Network Name.
  /// [networkSize] Network Size.
  /// [subnetConfigurations] Subnet Configurations.
  EnclaveVirtualNetworkModelResponse({
    this.allowSubnetCommunication,
    this.customCidrRange,
    this.networkName,
    this.networkSize,
    this.subnetConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSubnetCommunication': ?allowSubnetCommunication,
      'customCidrRange': ?customCidrRange,
      'networkName': ?networkName,
      'networkSize': ?networkSize,
      'subnetConfigurations': ?subnetConfigurations == null ? null : pulumi.Input.encodeList<SubnetConfigurationResponse, Map<String, dynamic>>(subnetConfigurations!, (value) => value.toMap()),
    };
  }

  factory EnclaveVirtualNetworkModelResponse.fromMap(Map<String, dynamic> map) {
    return EnclaveVirtualNetworkModelResponse(
      allowSubnetCommunication: map['allowSubnetCommunication'] == null ? null : map['allowSubnetCommunication'] as bool,
      customCidrRange: map['customCidrRange'] == null ? null : map['customCidrRange'] as String,
      networkName: map['networkName'] == null ? null : map['networkName'] as String,
      networkSize: map['networkSize'] == null ? null : map['networkSize'] as String,
      subnetConfigurations: map['subnetConfigurations'] == null ? null : pulumi.Input.decodeList<SubnetConfigurationResponse>(map['subnetConfigurations'], (value) => SubnetConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

