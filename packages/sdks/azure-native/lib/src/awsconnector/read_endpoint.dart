// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ReadEndpoint
class ReadEndpoint {
  /// The reader endpoint for the DB cluster.
  final pulumi.Input<String?>? address;

  /// Creates a new [ReadEndpoint].
  /// [address] The reader endpoint for the DB cluster.
  const ReadEndpoint({
    this.address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
    };
  }

  factory ReadEndpoint.fromMap(Map<String, dynamic> map) {
    return ReadEndpoint(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
