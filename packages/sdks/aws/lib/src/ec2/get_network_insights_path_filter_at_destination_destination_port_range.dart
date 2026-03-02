// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsPathFilterAtDestinationDestinationPortRange {
  final pulumi.Input<int> fromPort;
  final pulumi.Input<int> toPort;

  /// Creates a new [GetNetworkInsightsPathFilterAtDestinationDestinationPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  GetNetworkInsightsPathFilterAtDestinationDestinationPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory GetNetworkInsightsPathFilterAtDestinationDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtDestinationDestinationPortRange(
      fromPort: (map['fromPort'] as int).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

