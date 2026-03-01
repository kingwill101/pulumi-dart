// ignore_for_file: unused_element, unnecessary_cast


class PlanResponse {
  /// Plan accessibility
  final String? accessibility;
  /// Alternative stack type
  final String altStackReference;
  /// Friendly name for the plan for display in the marketplace
  final String planDisplayName;
  /// Text identifier for this plan
  final String planId;
  /// Identifier for this plan
  final String skuId;
  /// Stack type (classic or arm)
  final String stackType;

  /// Creates a new [PlanResponse].
  /// [accessibility] Plan accessibility
  /// [altStackReference] Alternative stack type
  /// [planDisplayName] Friendly name for the plan for display in the marketplace
  /// [planId] Text identifier for this plan
  /// [skuId] Identifier for this plan
  /// [stackType] Stack type (classic or arm)
  PlanResponse({
    this.accessibility,
    required this.altStackReference,
    required this.planDisplayName,
    required this.planId,
    required this.skuId,
    required this.stackType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessibility': ?accessibility,
      'altStackReference': altStackReference,
      'planDisplayName': planDisplayName,
      'planId': planId,
      'skuId': skuId,
      'stackType': stackType,
    };
  }

  factory PlanResponse.fromMap(Map<String, dynamic> map) {
    return PlanResponse(
      accessibility: map['accessibility'] == null ? null : map['accessibility'] as String,
      altStackReference: map['altStackReference'] as String,
      planDisplayName: map['planDisplayName'] as String,
      planId: map['planId'] as String,
      skuId: map['skuId'] as String,
      stackType: map['stackType'] as String,
    );
  }
}

