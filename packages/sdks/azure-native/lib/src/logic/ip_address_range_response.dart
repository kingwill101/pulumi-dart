// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ip address range.
class IpAddressRangeResponse {
  /// The IP address range.
  final pulumi.Input<String>? addressRange;

  /// Creates a new [IpAddressRangeResponse].
  /// [addressRange] The IP address range.
  IpAddressRangeResponse({
    this.addressRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRange': ?addressRange,
    };
  }

  factory IpAddressRangeResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressRangeResponse(
      addressRange: (() { final guardedValue = map['addressRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

