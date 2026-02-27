// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getServicePerimeter.
class GetServicePerimeterArgs2 {
  final Input<String> accessPolicyId;
  final Input<String> servicePerimeterId;

  GetServicePerimeterArgs2({
    required this.accessPolicyId,
    required this.servicePerimeterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    map['servicePerimeterId'] = servicePerimeterId;
    return map;
  }

  factory GetServicePerimeterArgs2.fromMap(Map<String, dynamic> map) {
    return GetServicePerimeterArgs2(
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
      servicePerimeterId: Input.asInput<String>(map['servicePerimeterId']),
    );
  }
}
