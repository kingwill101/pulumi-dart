// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_plan_api_stage_throttle.dart';

class UsagePlanApiStage {
  /// API Id of the associated API stage in a usage plan.
  final String apiId;

  /// API stage name of the associated API stage in a usage plan.
  final String stage;

  /// The throttling limits of the usage plan.
  final List<UsagePlanApiStageThrottle>? throttles;

  /// Creates a new [UsagePlanApiStage].
  /// [apiId] API Id of the associated API stage in a usage plan.
  /// [stage] API stage name of the associated API stage in a usage plan.
  /// [throttles] The throttling limits of the usage plan.
  UsagePlanApiStage({
    required this.apiId,
    required this.stage,
    this.throttles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiId'] = apiId;
    map['stage'] = stage;
    final throttlesValue = throttles;
    if (throttlesValue != null) {
      map['throttles'] = pulumi.Input.encodeList<UsagePlanApiStageThrottle,
          Map<String, dynamic>>(throttlesValue, (value) => value.toMap());
    }
    return map;
  }

  factory UsagePlanApiStage.fromMap(Map<String, dynamic> map) {
    return UsagePlanApiStage(
      apiId: map['apiId'] as String,
      stage: map['stage'] as String,
      throttles: map['throttles'] == null
          ? null
          : pulumi.Input.decodeList<UsagePlanApiStageThrottle>(
              map['throttles'],
              (value) => UsagePlanApiStageThrottle.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
