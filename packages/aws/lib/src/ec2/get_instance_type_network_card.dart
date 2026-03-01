// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceTypeNetworkCard {
  final double baselineBandwidth;
  final int index;
  final int maximumInterfaces;
  final double peakBandwidth;
  final String performance;

  /// Creates a new [GetInstanceTypeNetworkCard].
  /// [baselineBandwidth] Required.
  /// [index] Required.
  /// [maximumInterfaces] Required.
  /// [peakBandwidth] Required.
  /// [performance] Required.
  GetInstanceTypeNetworkCard({
    required this.baselineBandwidth,
    required this.index,
    required this.maximumInterfaces,
    required this.peakBandwidth,
    required this.performance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baselineBandwidth': baselineBandwidth,
      'index': index,
      'maximumInterfaces': maximumInterfaces,
      'peakBandwidth': peakBandwidth,
      'performance': performance,
    };
  }

  factory GetInstanceTypeNetworkCard.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeNetworkCard(
      baselineBandwidth: map['baselineBandwidth'] as double,
      index: map['index'] as int,
      maximumInterfaces: map['maximumInterfaces'] as int,
      peakBandwidth: map['peakBandwidth'] as double,
      performance: map['performance'] as String,
    );
  }
}

