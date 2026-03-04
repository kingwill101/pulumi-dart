// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NetworkBandwidthGbpsRequest
class NetworkBandwidthGbpsRequestResponse {
  /// The maximum amount of network bandwidth, in gigabits per second (Gbps).
  final pulumi.Input<int>? max;

  /// The minimum amount of network bandwidth, in gigabits per second (Gbps).
  final pulumi.Input<int>? min;

  /// Creates a new [NetworkBandwidthGbpsRequestResponse].
  /// [max] The maximum amount of network bandwidth, in gigabits per second (Gbps).
  /// [min] The minimum amount of network bandwidth, in gigabits per second (Gbps).
  NetworkBandwidthGbpsRequestResponse({this.max, this.min});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'max': ?max, 'min': ?min};
  }

  factory NetworkBandwidthGbpsRequestResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkBandwidthGbpsRequestResponse(
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
