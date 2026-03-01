// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NetworkBandwidthGbpsRequest
class NetworkBandwidthGbpsRequestResponse {
  /// The maximum amount of network bandwidth, in gigabits per second (Gbps).
  final int? max;
  /// The minimum amount of network bandwidth, in gigabits per second (Gbps).
  final int? min;

  /// Creates a new [NetworkBandwidthGbpsRequestResponse].
  /// [max] The maximum amount of network bandwidth, in gigabits per second (Gbps).
  /// [min] The minimum amount of network bandwidth, in gigabits per second (Gbps).
  NetworkBandwidthGbpsRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory NetworkBandwidthGbpsRequestResponse.fromMap(Map<String, dynamic> map) {
    return NetworkBandwidthGbpsRequestResponse(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

