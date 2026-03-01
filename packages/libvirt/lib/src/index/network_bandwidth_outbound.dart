// ignore_for_file: unused_element, unnecessary_cast


class NetworkBandwidthOutbound {
  /// Sets the average allowable rate of outbound data for the network, providing a general performance baseline.
  final double? average;
  /// Configures the maximum burst capacity of outbound data that can exceed the average rate temporarily.
  final double? burst;
  /// Specifies the minimum guaranteed rate for outbound data traffic, ensuring a baseline level of performance.
  final double? floor;
  /// Defines the upper limit for the peak rate of outbound data, controlling spikes in network usage.
  final double? peak;

  /// Creates a new [NetworkBandwidthOutbound].
  /// [average] Sets the average allowable rate of outbound data for the network, providing a general performance baseline.
  /// [burst] Configures the maximum burst capacity of outbound data that can exceed the average rate temporarily.
  /// [floor] Specifies the minimum guaranteed rate for outbound data traffic, ensuring a baseline level of performance.
  /// [peak] Defines the upper limit for the peak rate of outbound data, controlling spikes in network usage.
  NetworkBandwidthOutbound({
    this.average,
    this.burst,
    this.floor,
    this.peak,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'average': ?average,
      'burst': ?burst,
      'floor': ?floor,
      'peak': ?peak,
    };
  }

  factory NetworkBandwidthOutbound.fromMap(Map<String, dynamic> map) {
    return NetworkBandwidthOutbound(
      average: map['average'] == null ? null : map['average'] as double,
      burst: map['burst'] == null ? null : map['burst'] as double,
      floor: map['floor'] == null ? null : map['floor'] as double,
      peak: map['peak'] == null ? null : map['peak'] as double,
    );
  }
}

