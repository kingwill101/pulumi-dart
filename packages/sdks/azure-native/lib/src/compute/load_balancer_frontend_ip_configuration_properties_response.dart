// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Describes a cloud service IP Configuration
class LoadBalancerFrontendIpConfigurationPropertiesResponse {
  /// The virtual network private IP address of the IP configuration.
  final String? privateIPAddress;
  /// The reference to the public ip address resource.
  final SubResourceResponse? publicIPAddress;
  /// The reference to the virtual network subnet resource.
  final SubResourceResponse? subnet;

  /// Creates a new [LoadBalancerFrontendIpConfigurationPropertiesResponse].
  /// [privateIPAddress] The virtual network private IP address of the IP configuration.
  /// [publicIPAddress] The reference to the public ip address resource.
  /// [subnet] The reference to the virtual network subnet resource.
  LoadBalancerFrontendIpConfigurationPropertiesResponse({
    this.privateIPAddress,
    this.publicIPAddress,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIPAddress': ?privateIPAddress,
      'publicIPAddress': ?publicIPAddress == null ? null : publicIPAddress!.toMap(),
      'subnet': ?subnet == null ? null : subnet!.toMap(),
    };
  }

  factory LoadBalancerFrontendIpConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerFrontendIpConfigurationPropertiesResponse(
      privateIPAddress: map['privateIPAddress'] == null ? null : map['privateIPAddress'] as String,
      publicIPAddress: map['publicIPAddress'] == null ? null : SubResourceResponse.fromMap((map['publicIPAddress'] as Map).cast<String, dynamic>()),
      subnet: map['subnet'] == null ? null : SubResourceResponse.fromMap((map['subnet'] as Map).cast<String, dynamic>()),
    );
  }
}

