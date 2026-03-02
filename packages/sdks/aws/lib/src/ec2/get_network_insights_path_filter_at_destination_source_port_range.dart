// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsPathFilterAtDestinationSourcePortRange {
  final pulumi.Input<int> fromPort;
  final pulumi.Input<int> toPort;

  /// Creates a new [GetNetworkInsightsPathFilterAtDestinationSourcePortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  GetNetworkInsightsPathFilterAtDestinationSourcePortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory GetNetworkInsightsPathFilterAtDestinationSourcePortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtDestinationSourcePortRange(
      fromPort: (map['fromPort'] as int).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

