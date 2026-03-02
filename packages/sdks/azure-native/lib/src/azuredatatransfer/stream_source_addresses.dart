// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source IP address and CIDR ranges of the stream
class StreamSourceAddresses {
  /// A source IP address or CIDR range
  final pulumi.Input<List<String>>? sourceAddresses;

  /// Creates a new [StreamSourceAddresses].
  /// [sourceAddresses] A source IP address or CIDR range
  StreamSourceAddresses({
    this.sourceAddresses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceAddresses': ?sourceAddresses,
    };
  }

  factory StreamSourceAddresses.fromMap(Map<String, dynamic> map) {
    return StreamSourceAddresses(
      sourceAddresses: map['sourceAddresses'] == null ? null : ((map['sourceAddresses']! as List).cast<String>()).input(),
    );
  }
}

