// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of PortRange
class PortRangeResponse {
  /// Property fromPort
  final pulumi.Input<int>? fromPort;
  /// Property toPort
  final pulumi.Input<int>? toPort;

  /// Creates a new [PortRangeResponse].
  /// [fromPort] Property fromPort
  /// [toPort] Property toPort
  PortRangeResponse({
    this.fromPort,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': ?fromPort,
      'toPort': ?toPort,
    };
  }

  factory PortRangeResponse.fromMap(Map<String, dynamic> map) {
    return PortRangeResponse(
      fromPort: map['fromPort'] == null ? null : (map['fromPort'] as int).input(),
      toPort: map['toPort'] == null ? null : (map['toPort'] as int).input(),
    );
  }
}

