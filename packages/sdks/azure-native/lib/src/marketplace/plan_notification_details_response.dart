// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Plan notification details
class PlanNotificationDetailsResponse {
  /// Gets or sets the plan display name
  final pulumi.Input<String>? planDisplayName;
  /// Gets or sets the plan id
  final pulumi.Input<String>? planId;

  /// Creates a new [PlanNotificationDetailsResponse].
  /// [planDisplayName] Gets or sets the plan display name
  /// [planId] Gets or sets the plan id
  const PlanNotificationDetailsResponse({
    this.planDisplayName,
    this.planId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'planDisplayName': ?planDisplayName,
      'planId': ?planId,
    };
  }

  factory PlanNotificationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return PlanNotificationDetailsResponse(
      planDisplayName: (() { final guardedValue = map['planDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      planId: (() { final guardedValue = map['planId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

