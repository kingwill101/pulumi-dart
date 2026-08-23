// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The high availability properties of the cluster.
class HighAvailabilityPropertiesResponse {
  /// The target high availability mode requested for the cluster.
  final pulumi.Input<String>? targetMode;

  /// Creates a new [HighAvailabilityPropertiesResponse].
  /// [targetMode] The target high availability mode requested for the cluster.
  const HighAvailabilityPropertiesResponse({
    this.targetMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetMode': ?targetMode,
    };
  }

  factory HighAvailabilityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HighAvailabilityPropertiesResponse(
      targetMode: (() { final guardedValue = map['targetMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
