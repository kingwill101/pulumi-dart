// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NetworkInterfaceCountRequest
class NetworkInterfaceCountRequestResponse {
  /// The maximum number of network interfaces.
  final pulumi.Input<int>? max;

  /// The minimum number of network interfaces.
  final pulumi.Input<int>? min;

  /// Creates a new [NetworkInterfaceCountRequestResponse].
  /// [max] The maximum number of network interfaces.
  /// [min] The minimum number of network interfaces.
  NetworkInterfaceCountRequestResponse({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory NetworkInterfaceCountRequestResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkInterfaceCountRequestResponse(
      max: (() {
        final guardedValue = map['max'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      min: (() {
        final guardedValue = map['min'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
