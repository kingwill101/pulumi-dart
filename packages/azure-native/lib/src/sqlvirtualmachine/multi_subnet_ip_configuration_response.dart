// ignore_for_file: unused_element, unnecessary_cast

import 'private_ipaddress_response.dart';

/// Multi subnet ip configuration for an availability group listener.
class MultiSubnetIpConfigurationResponse {
  /// Private IP address.
  final PrivateIPAddressResponse privateIpAddress;
  /// SQL virtual machine instance resource id that are enrolled into the availability group listener.
  final String sqlVirtualMachineInstance;

  /// Creates a new [MultiSubnetIpConfigurationResponse].
  /// [privateIpAddress] Private IP address.
  /// [sqlVirtualMachineInstance] SQL virtual machine instance resource id that are enrolled into the availability group listener.
  MultiSubnetIpConfigurationResponse({
    required this.privateIpAddress,
    required this.sqlVirtualMachineInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': privateIpAddress.toMap(),
      'sqlVirtualMachineInstance': sqlVirtualMachineInstance,
    };
  }

  factory MultiSubnetIpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MultiSubnetIpConfigurationResponse(
      privateIpAddress: PrivateIPAddressResponse.fromMap((map['privateIpAddress'] as Map).cast<String, dynamic>()),
      sqlVirtualMachineInstance: map['sqlVirtualMachineInstance'] as String,
    );
  }
}

