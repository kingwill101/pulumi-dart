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
      accessibility: (() {
        final guardedValue = map['accessibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      altStackReference: pulumi.Input.fromValue(
        map['altStackReference'] as String,
      ),
      planDisplayName: pulumi.Input.fromValue(map['planDisplayName'] as String),
      planId: pulumi.Input.fromValue(map['planId'] as String),
      skuId: pulumi.Input.fromValue(map['skuId'] as String),
      stackType: pulumi.Input.fromValue(map['stackType'] as String),
    );
  }
}
