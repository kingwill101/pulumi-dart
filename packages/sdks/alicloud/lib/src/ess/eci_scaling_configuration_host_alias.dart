// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EciScalingConfigurationHostAlias {
  /// Adds a host name.
  final pulumi.Input<List<String>>? hostnames;

  /// Adds an IP address.
  final pulumi.Input<String>? ip;

  /// Creates a new [EciScalingConfigurationHostAlias].
  /// [hostnames] Adds a host name.
  /// [ip] Adds an IP address.
  EciScalingConfigurationHostAlias({this.hostnames, this.ip});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'hostnames': ?hostnames, 'ip': ?ip};
  }

  factory EciScalingConfigurationHostAlias.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationHostAlias(
      hostnames: (() {
        final guardedValue = map['hostnames'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ip: (() {
        final guardedValue = map['ip'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
