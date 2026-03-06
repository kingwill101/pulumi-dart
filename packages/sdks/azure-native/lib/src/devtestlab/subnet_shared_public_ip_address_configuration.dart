// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port.dart';

/// Configuration for public IP address sharing.
class SubnetSharedPublicIpAddressConfiguration {
  /// Backend ports that virtual machines on this subnet are allowed to expose
  final pulumi.Input<List<Port>>? allowedPorts;

  /// Creates a new [SubnetSharedPublicIpAddressConfiguration].
  /// [allowedPorts] Backend ports that virtual machines on this subnet are allowed to expose
  const SubnetSharedPublicIpAddressConfiguration({
    this.allowedPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPorts': ?pulumi.Input.mapOptionalInputValue<List<Port>, List<Map<String, dynamic>>>(allowedPorts, (value) => pulumi.Input.encodeList<Port, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubnetSharedPublicIpAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return SubnetSharedPublicIpAddressConfiguration(
      allowedPorts: (() { final guardedValue = map['allowedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Port>(guardedValue, (value) => Port.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

