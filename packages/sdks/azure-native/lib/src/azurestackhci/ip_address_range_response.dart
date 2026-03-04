// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP address range configuration.
class IpAddressRangeResponse {
  /// End IP address.
  final pulumi.Input<String> endIp;

  /// Start IP address.
  final pulumi.Input<String> startIp;

  /// Creates a new [IpAddressRangeResponse].
  /// [endIp] End IP address.
  /// [startIp] Start IP address.
  IpAddressRangeResponse({required this.endIp, required this.startIp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'endIp': endIp, 'startIp': startIp};
  }

  factory IpAddressRangeResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressRangeResponse(
      endIp: pulumi.Input.fromValue(map['endIp'] as String),
      startIp: pulumi.Input.fromValue(map['startIp'] as String),
    );
  }
}
