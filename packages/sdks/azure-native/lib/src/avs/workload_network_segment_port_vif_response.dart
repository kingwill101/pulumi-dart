// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ports and any VIF attached to segment.
class WorkloadNetworkSegmentPortVifResponse {
  /// Name of port or VIF attached to segment.
  final pulumi.Input<String>? portName;

  /// Creates a new [WorkloadNetworkSegmentPortVifResponse].
  /// [portName] Name of port or VIF attached to segment.
  WorkloadNetworkSegmentPortVifResponse({
    this.portName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portName': ?portName,
    };
  }

  factory WorkloadNetworkSegmentPortVifResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkSegmentPortVifResponse(
      portName: map['portName'] == null ? null : (map['portName']! as String).input(),
    );
  }
}

