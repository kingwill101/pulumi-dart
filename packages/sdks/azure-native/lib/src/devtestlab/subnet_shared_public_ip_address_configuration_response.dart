// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_response.dart';

/// Configuration for public IP address sharing.
class SubnetSharedPublicIpAddressConfigurationResponse {
  /// Backend ports that virtual machines on this subnet are allowed to expose
  final pulumi.Input<List<PortResponse>?>? allowedPorts;

  /// Creates a new [SubnetSharedPublicIpAddressConfigurationResponse].
  /// [allowedPorts] Backend ports that virtual machines on this subnet are allowed to expose
  const SubnetSharedPublicIpAddressConfigurationResponse({
    this.allowedPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPorts': ?pulumi.Input.mapOptionalInputValue<List<PortResponse>, List<Map<String, dynamic>>>(allowedPorts, (value) => pulumi.Input.encodeList<PortResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubnetSharedPublicIpAddressConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return SubnetSharedPublicIpAddressConfigurationResponse(
      allowedPorts: (() { final guardedValue = map['allowedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PortResponse>(guardedValue, (value) => PortResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
