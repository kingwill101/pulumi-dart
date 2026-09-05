// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkInsightsPathFilterAtSourceSourcePortRange {
  /// The first port in the range.
  final pulumi.Input<int?>? fromPort;
  /// The last port in the range.
  final pulumi.Input<int?>? toPort;

  /// Creates a new [NetworkInsightsPathFilterAtSourceSourcePortRange].
  /// [fromPort] The first port in the range.
  /// [toPort] The last port in the range.
  const NetworkInsightsPathFilterAtSourceSourcePortRange({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory NetworkInsightsPathFilterAtSourceSourcePortRange.fromMap(Map<String, dynamic> map) {
    return NetworkInsightsPathFilterAtSourceSourcePortRange(
      fromPort: (() { final guardedValue = map['fromPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      toPort: (() { final guardedValue = map['toPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
