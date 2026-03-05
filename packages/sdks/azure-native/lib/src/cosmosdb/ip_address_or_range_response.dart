// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IpAddressOrRange object
class IpAddressOrRangeResponse {
  /// A single IPv4 address or a single IPv4 address range in CIDR format. Provided IPs must be well-formatted and cannot be contained in one of the following ranges: 10.0.0.0/8, 100.64.0.0/10, 172.16.0.0/12, 192.168.0.0/16, since these are not enforceable by the IP address filter. Example of valid inputs: “23.40.210.245” or “23.40.210.0/8”.
  final pulumi.Input<String>? ipAddressOrRange;

  /// Creates a new [IpAddressOrRangeResponse].
  /// [ipAddressOrRange] A single IPv4 address or a single IPv4 address range in CIDR format. Provided IPs must be well-formatted and cannot be contained in one of the following ranges: 10.0.0.0/8, 100.64.0.0/10, 172.16.0.0/12, 192.168.0.0/16, since these are not enforceable by the IP address filter. Example of valid inputs: “23.40.210.245” or “23.40.210.0/8”.
  IpAddressOrRangeResponse({
    this.ipAddressOrRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressOrRange': ?ipAddressOrRange,
    };
  }

  factory IpAddressOrRangeResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressOrRangeResponse(
      ipAddressOrRange: (() { final guardedValue = map['ipAddressOrRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

