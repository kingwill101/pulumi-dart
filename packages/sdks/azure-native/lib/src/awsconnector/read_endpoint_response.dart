// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ReadEndpoint
class ReadEndpointResponse {
  /// The reader endpoint for the DB cluster.
  final pulumi.Input<String>? address;

  /// Creates a new [ReadEndpointResponse].
  /// [address] The reader endpoint for the DB cluster.
  ReadEndpointResponse({this.address});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'address': ?address};
  }

  factory ReadEndpointResponse.fromMap(Map<String, dynamic> map) {
    return ReadEndpointResponse(
      address: (() {
        final guardedValue = map['address'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
