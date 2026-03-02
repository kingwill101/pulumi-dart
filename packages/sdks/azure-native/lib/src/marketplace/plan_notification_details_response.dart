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
  PlanNotificationDetailsResponse({
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
      planDisplayName: map['planDisplayName'] == null ? null : (map['planDisplayName'] as String).input(),
      planId: map['planId'] == null ? null : (map['planId'] as String).input(),
    );
  }
}

