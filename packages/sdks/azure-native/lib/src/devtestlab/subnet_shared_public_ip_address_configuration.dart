// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port.dart';

/// Configuration for public IP address sharing.
class SubnetSharedPublicIpAddressConfiguration {
  /// Backend ports that virtual machines on this subnet are allowed to expose
  final List<Port>? allowedPorts;

  /// Creates a new [SubnetSharedPublicIpAddressConfiguration].
  /// [allowedPorts] Backend ports that virtual machines on this subnet are allowed to expose
  SubnetSharedPublicIpAddressConfiguration({
    this.allowedPorts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedPorts': ?allowedPorts == null ? null : pulumi.Input.encodeList<Port, Map<String, dynamic>>(allowedPorts!, (value) => value.toMap()),
    };
  }

  factory SubnetSharedPublicIpAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return SubnetSharedPublicIpAddressConfiguration(
      allowedPorts: map['allowedPorts'] == null ? null : pulumi.Input.decodeList<Port>(map['allowedPorts'], (value) => Port.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

