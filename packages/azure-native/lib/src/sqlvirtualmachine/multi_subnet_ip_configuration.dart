// ignore_for_file: unused_element, unnecessary_cast

import 'private_ipaddress.dart';

/// Multi subnet ip configuration for an availability group listener.
class MultiSubnetIpConfiguration {
  /// Private IP address.
  final PrivateIPAddress privateIpAddress;
  /// SQL virtual machine instance resource id that are enrolled into the availability group listener.
  final String sqlVirtualMachineInstance;

  /// Creates a new [MultiSubnetIpConfiguration].
  /// [privateIpAddress] Private IP address.
  /// [sqlVirtualMachineInstance] SQL virtual machine instance resource id that are enrolled into the availability group listener.
  MultiSubnetIpConfiguration({
    required this.privateIpAddress,
    required this.sqlVirtualMachineInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': privateIpAddress.toMap(),
      'sqlVirtualMachineInstance': sqlVirtualMachineInstance,
    };
  }

  factory MultiSubnetIpConfiguration.fromMap(Map<String, dynamic> map) {
    return MultiSubnetIpConfiguration(
      privateIpAddress: PrivateIPAddress.fromMap((map['privateIpAddress'] as Map).cast<String, dynamic>()),
      sqlVirtualMachineInstance: map['sqlVirtualMachineInstance'] as String,
    );
  }
}

