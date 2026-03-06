// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile for how to handle networking for Lab Plans.
class LabPlanNetworkProfile {
  /// The external subnet resource id
  final pulumi.Input<String>? subnetId;

  /// Creates a new [LabPlanNetworkProfile].
  /// [subnetId] The external subnet resource id
  const LabPlanNetworkProfile({
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': ?subnetId,
    };
  }

  factory LabPlanNetworkProfile.fromMap(Map<String, dynamic> map) {
    return LabPlanNetworkProfile(
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

