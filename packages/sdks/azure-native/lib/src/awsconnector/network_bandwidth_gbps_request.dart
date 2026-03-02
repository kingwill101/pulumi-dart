// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of NetworkBandwidthGbpsRequest
class NetworkBandwidthGbpsRequest {
  /// The maximum amount of network bandwidth, in gigabits per second (Gbps).
  final pulumi.Input<int>? max;
  /// The minimum amount of network bandwidth, in gigabits per second (Gbps).
  final pulumi.Input<int>? min;

  /// Creates a new [NetworkBandwidthGbpsRequest].
  /// [max] The maximum amount of network bandwidth, in gigabits per second (Gbps).
  /// [min] The minimum amount of network bandwidth, in gigabits per second (Gbps).
  NetworkBandwidthGbpsRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory NetworkBandwidthGbpsRequest.fromMap(Map<String, dynamic> map) {
    return NetworkBandwidthGbpsRequest(
      max: map['max'] == null ? null : (map['max']! as int).input(),
      min: map['min'] == null ? null : (map['min']! as int).input(),
    );
  }
}

