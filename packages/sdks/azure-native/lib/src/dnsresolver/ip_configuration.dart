// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// IP configuration.
class IpConfiguration {
  /// Private IP address of the IP configuration.
  final pulumi.Input<String?>? privateIpAddress;
  /// Private IP address allocation method.
  final pulumi.Input<dynamic>? privateIpAllocationMethod;
  /// The reference to the subnet bound to the IP configuration.
  final pulumi.Input<SubResource> subnet;

  /// Creates a new [IpConfiguration].
  /// [privateIpAddress] Private IP address of the IP configuration.
  /// [privateIpAllocationMethod] Private IP address allocation method.
  /// [subnet] The reference to the subnet bound to the IP configuration.
  IpConfiguration({
    this.privateIpAddress,
    pulumi.Input<dynamic>? privateIpAllocationMethod,
    required this.subnet,
  }) : privateIpAllocationMethod = privateIpAllocationMethod ?? pulumi.Input.fromValue('Dynamic');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateIpAddress': ?privateIpAddress,
      'privateIpAllocationMethod': ?privateIpAllocationMethod,
      'subnet': pulumi.Input.mapInputValue<SubResource, Map<String, dynamic>>(subnet, (value) => value.toMap()),
    };
  }

  factory IpConfiguration.fromMap(Map<String, dynamic> map) {
    return IpConfiguration(
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAllocationMethod: (() { final guardedValue = map['privateIpAllocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      subnet: pulumi.Input.fromValue(SubResource.fromMap((map['subnet']! as Map).cast<String, dynamic>())),
    );
  }
}
