// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkInsightsPathFilterAtSourceDestinationPortRange {
  final pulumi.Input<int> fromPort;
  final pulumi.Input<int> toPort;

  /// Creates a new [GetNetworkInsightsPathFilterAtSourceDestinationPortRange].
  /// [fromPort] Required.
  /// [toPort] Required.
  const GetNetworkInsightsPathFilterAtSourceDestinationPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory GetNetworkInsightsPathFilterAtSourceDestinationPortRange.fromMap(Map<String, dynamic> map) {
    return GetNetworkInsightsPathFilterAtSourceDestinationPortRange(
      fromPort: pulumi.Input.fromValue((map['fromPort'] as num).toInt()),
      toPort: pulumi.Input.fromValue((map['toPort'] as num).toInt()),
    );
  }
}
