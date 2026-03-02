// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ip address range.
class IpAddressRange {
  /// The IP address range.
  final pulumi.Input<String>? addressRange;

  /// Creates a new [IpAddressRange].
  /// [addressRange] The IP address range.
  IpAddressRange({
    this.addressRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRange': ?addressRange,
    };
  }

  factory IpAddressRange.fromMap(Map<String, dynamic> map) {
    return IpAddressRange(
      addressRange: map['addressRange'] == null ? null : (map['addressRange']! as String).input(),
    );
  }
}

