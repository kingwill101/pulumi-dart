// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRatePlan.
class GetRatePlanArgs {
  final pulumi.Input<String> apiproductId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> rateplanId;

  GetRatePlanArgs({
    required this.apiproductId,
    required this.organizationId,
    required this.rateplanId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['apiproductId'] = apiproductId;
    map['organizationId'] = organizationId;
    map['rateplanId'] = rateplanId;
    return map;
  }

  factory GetRatePlanArgs.fromMap(Map<String, dynamic> map) {
    return GetRatePlanArgs(
      apiproductId: pulumi.Input.asInput<String>(map['apiproductId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      rateplanId: pulumi.Input.asInput<String>(map['rateplanId']),
    );
  }
}
