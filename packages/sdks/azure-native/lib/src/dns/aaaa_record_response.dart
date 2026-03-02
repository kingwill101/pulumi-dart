// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An AAAA record.
class AaaaRecordResponse {
  /// The IPv6 address of this AAAA record.
  final pulumi.Input<String>? ipv6Address;

  /// Creates a new [AaaaRecordResponse].
  /// [ipv6Address] The IPv6 address of this AAAA record.
  AaaaRecordResponse({
    this.ipv6Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6Address': ?ipv6Address,
    };
  }

  factory AaaaRecordResponse.fromMap(Map<String, dynamic> map) {
    return AaaaRecordResponse(
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address']! as String).input(),
    );
  }
}

