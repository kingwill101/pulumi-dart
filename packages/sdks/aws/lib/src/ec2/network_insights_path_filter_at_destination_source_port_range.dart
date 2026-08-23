// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsPathFilterAtDestinationSourcePortRange {
  /// The first port in the range.
  final pulumi.Input<int>? fromPort;
  /// The last port in the range.
  final pulumi.Input<int>? toPort;

  /// Creates a new [NetworkInsightsPathFilterAtDestinationSourcePortRange].
  /// [fromPort] The first port in the range.
  /// [toPort] The last port in the range.
  const NetworkInsightsPathFilterAtDestinationSourcePortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory NetworkInsightsPathFilterAtDestinationSourcePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtDestinationSourcePortRange(
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
