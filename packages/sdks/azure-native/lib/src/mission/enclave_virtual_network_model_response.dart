// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_configuration_response.dart';

/// Enclave Virtual Network Properties
class EnclaveVirtualNetworkModelResponse {
  /// Allow Subnet Communication.
  final pulumi.Input<bool>? allowSubnetCommunication;
  /// Custom CIDR Range.
  final pulumi.Input<String>? customCidrRange;
  /// Network Name.
  final pulumi.Input<String>? networkName;
  /// Network Size.
  final pulumi.Input<String>? networkSize;
  /// Subnet Configurations.
  final pulumi.Input<List<SubnetConfigurationResponse>>? subnetConfigurations;

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
      'subnetConfigurations': ?pulumi.Input.mapOptionalInputValue<List<SubnetConfigurationResponse>, List<Map<String, dynamic>>>(subnetConfigurations, (value) => pulumi.Input.encodeList<SubnetConfigurationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnclaveVirtualNetworkModelResponse.fromMap(Map<String, dynamic> map) {
    return EnclaveVirtualNetworkModelResponse(
      allowSubnetCommunication: (() { final guardedValue = map['allowSubnetCommunication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      customCidrRange: (() { final guardedValue = map['customCidrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkName: (() { final guardedValue = map['networkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkSize: (() { final guardedValue = map['networkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetConfigurations: (() { final guardedValue = map['subnetConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubnetConfigurationResponse>(guardedValue, (value) => SubnetConfigurationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

