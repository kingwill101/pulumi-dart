// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanResponse {
  /// Plan accessibility
  final pulumi.Input<String>? accessibility;
  /// Alternative stack type
  final pulumi.Input<String> altStackReference;
  /// Friendly name for the plan for display in the marketplace
  final pulumi.Input<String> planDisplayName;
  /// Text identifier for this plan
  final pulumi.Input<String> planId;
  /// Identifier for this plan
  final pulumi.Input<String> skuId;
  /// Stack type (classic or arm)
  final pulumi.Input<String> stackType;

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
      accessibility: map['accessibility'] == null ? null : (map['accessibility'] as String).input(),
      altStackReference: (map['altStackReference'] as String).input(),
      planDisplayName: (map['planDisplayName'] as String).input(),
      planId: (map['planId'] as String).input(),
      skuId: (map['skuId'] as String).input(),
      stackType: (map['stackType'] as String).input(),
    );
  }
}

