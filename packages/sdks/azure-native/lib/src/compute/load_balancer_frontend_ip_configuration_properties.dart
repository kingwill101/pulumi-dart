// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Describes a cloud service IP Configuration
class LoadBalancerFrontendIpConfigurationProperties {
  /// The virtual network private IP address of the IP configuration.
  final pulumi.Input<String>? privateIPAddress;
  /// The reference to the public ip address resource.
  final pulumi.Input<SubResource>? publicIPAddress;
  /// The reference to the virtual network subnet resource.
  final pulumi.Input<SubResource>? subnet;

  /// Creates a new [LoadBalancerFrontendIpConfigurationProperties].
  /// [privateIPAddress] The virtual network private IP address of the IP configuration.
  /// [publicIPAddress] The reference to the public ip address resource.
  /// [subnet] The reference to the virtual network subnet resource.
  const LoadBalancerFrontendIpConfigurationProperties({
    this.privateIPAddress,
    this.publicIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'publicIPAddress': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(publicIPAddress, (value) => value.toMap()),
      'subnet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory LoadBalancerFrontendIpConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return LoadBalancerFrontendIpConfigurationProperties(
      privateIPAddress: (() { final guardedValue = map['privateIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicIPAddress: (() { final guardedValue = map['publicIPAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

