// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source IP address and CIDR ranges of the stream
class StreamSourceAddressesResponse {
  /// A source IP address or CIDR range
  final pulumi.Input<List<String>>? sourceAddresses;

  /// Creates a new [StreamSourceAddressesResponse].
  /// [sourceAddresses] A source IP address or CIDR range
  const StreamSourceAddressesResponse({
    this.sourceAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceAddresses': ?sourceAddresses,
    };
  }

  factory StreamSourceAddressesResponse.fromMap(Map<String, dynamic> map) {
    return StreamSourceAddressesResponse(
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

