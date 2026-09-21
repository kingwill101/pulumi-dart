// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceTypeNetworkCard {
  final pulumi.Input<double> baselineBandwidth;
  final pulumi.Input<int> index;
  final pulumi.Input<int> maximumInterfaces;
  final pulumi.Input<double> peakBandwidth;
  final pulumi.Input<String> performance;

  /// Creates a new [GetInstanceTypeNetworkCard].
  /// [baselineBandwidth] Required.
  /// [index] Required.
  /// [maximumInterfaces] Required.
  /// [peakBandwidth] Required.
  /// [performance] Required.
  const GetInstanceTypeNetworkCard({
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
      baselineBandwidth: pulumi.Input.fromValue((map['baselineBandwidth'] as num).toDouble()),
      index: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['index'])),
      maximumInterfaces: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maximumInterfaces'])),
      peakBandwidth: pulumi.Input.fromValue((map['peakBandwidth'] as num).toDouble()),
      performance: pulumi.Input.fromValue(map['performance'] as String),
    );
  }
}
