// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsPathFilterAtSourceDestinationPortRange {
  /// The first port in the range.
  final pulumi.Input<int>? fromPort;
  /// The last port in the range.
  final pulumi.Input<int>? toPort;

  /// Creates a new [NetworkInsightsPathFilterAtSourceDestinationPortRange].
  /// [fromPort] The first port in the range.
  /// [toPort] The last port in the range.
  NetworkInsightsPathFilterAtSourceDestinationPortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory NetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtSourceDestinationPortRange(
      fromPort: map['fromPort'] == null ? null : (map['fromPort'] as int).input(),
      toPort: map['toPort'] == null ? null : (map['toPort'] as int).input(),
    );
  }
}

