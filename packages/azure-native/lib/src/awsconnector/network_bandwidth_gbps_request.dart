// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NetworkBandwidthGbpsRequest
class NetworkBandwidthGbpsRequest {
  /// The maximum amount of network bandwidth, in gigabits per second (Gbps).
  final int? max;
  /// The minimum amount of network bandwidth, in gigabits per second (Gbps).
  final int? min;

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
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

