// ignore_for_file: unused_element, unnecessary_cast


/// Plan notification details
class PlanNotificationDetailsResponse {
  /// Gets or sets the plan display name
  final String? planDisplayName;
  /// Gets or sets the plan id
  final String? planId;

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
      planDisplayName: map['planDisplayName'] == null ? null : map['planDisplayName'] as String,
      planId: map['planId'] == null ? null : map['planId'] as String,
    );
  }
}

