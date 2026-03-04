// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Profile for how to handle networking for Lab Plans.
class LabPlanNetworkProfileResponse {
  /// The external subnet resource id
  final pulumi.Input<String>? subnetId;

  /// Creates a new [LabPlanNetworkProfileResponse].
  /// [subnetId] The external subnet resource id
  LabPlanNetworkProfileResponse({this.subnetId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'subnetId': ?subnetId};
  }

  factory LabPlanNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return LabPlanNetworkProfileResponse(
      subnetId: (() {
        final guardedValue = map['subnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
