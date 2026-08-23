// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP address range configuration.
class IpAddressRange {
  /// End IP address.
  final pulumi.Input<String> endIp;
  /// Start IP address.
  final pulumi.Input<String> startIp;

  /// Creates a new [IpAddressRange].
  /// [endIp] End IP address.
  /// [startIp] Start IP address.
  const IpAddressRange({
    required this.endIp,
    required this.startIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endIp': endIp,
      'startIp': startIp,
    };
  }

  factory IpAddressRange.fromMap(Map<String, dynamic> map) {
    return IpAddressRange(
      endIp: pulumi.Input.fromValue(map['endIp'] as String),
      startIp: pulumi.Input.fromValue(map['startIp'] as String),
    );
  }
}
