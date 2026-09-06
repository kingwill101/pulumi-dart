// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// IP configuration.
class IpConfigurationResponse {
  /// Private IP address of the IP configuration.
  final pulumi.Input<String?>? privateIpAddress;
  /// Private IP address allocation method.
  final pulumi.Input<String?>? privateIpAllocationMethod;
  /// The reference to the subnet bound to the IP configuration.
  final pulumi.Input<SubResourceResponse> subnet;

  /// Creates a new [IpConfigurationResponse].
  /// [privateIpAddress] Private IP address of the IP configuration.
  /// [privateIpAllocationMethod] Private IP address allocation method.
  /// [subnet] The reference to the subnet bound to the IP configuration.
  IpConfigurationResponse({
    this.privateIpAddress,
    pulumi.Input<String?>? privateIpAllocationMethod,
    required this.subnet,
  }) : privateIpAllocationMethod = privateIpAllocationMethod ?? pulumi.Input.fromValue('Dynamic');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'subnet': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory IpConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return IpConfigurationResponse(
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAllocationMethod: (() { final guardedValue = map['privateIpAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['subnet']! as Map).cast<String, dynamic>())),
    );
  }
}
