// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRatePlan.
class GetRatePlanArgs {
  final Input<String> apiproductId;
  final Input<String> organizationId;
  final Input<String> rateplanId;

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
      apiproductId: Input.asInput<String>(map['apiproductId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      rateplanId: Input.asInput<String>(map['rateplanId']),
    );
  }
}
