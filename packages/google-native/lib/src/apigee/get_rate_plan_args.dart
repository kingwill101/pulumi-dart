// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_rate_plan_args_doc}
/// Arguments for getRatePlan.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_rate_plan_args_doc}
class GetRatePlanArgs {
  final pulumi.Input<String> apiproductId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> rateplanId;

  /// Creates a new [GetRatePlanArgs].
  /// [apiproductId] Required.
  /// [organizationId] Required.
  /// [rateplanId] Required.
  GetRatePlanArgs({
    required String apiproductId,
    required String organizationId,
    required String rateplanId,
  })  : apiproductId = pulumi.Input.asInput<String>(apiproductId),
        organizationId = pulumi.Input.asInput<String>(organizationId),
        rateplanId = pulumi.Input.asInput<String>(rateplanId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiproductId'] = apiproductId;
    map['organizationId'] = organizationId;
    map['rateplanId'] = rateplanId;
    return map;
  }

  factory GetRatePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetRatePlanArgs(
      apiproductId: map['apiproductId'] as String,
      organizationId: map['organizationId'] as String,
      rateplanId: map['rateplanId'] as String,
    );
  }
}
