// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServicePerimeter.
class GetServicePerimeterArgs {
  final Input<String> accessPolicyId;
  final Input<String> servicePerimeterId;

  GetServicePerimeterArgs({
    required this.accessPolicyId,
    required this.servicePerimeterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    map['servicePerimeterId'] = servicePerimeterId;
    return map;
  }

  factory GetServicePerimeterArgs.fromMap(Map<String, dynamic> map) {
    return GetServicePerimeterArgs(
      accessPolicyId: Input.asInput<String>(map['accessPolicyId']),
      servicePerimeterId: Input.asInput<String>(map['servicePerimeterId']),
    );
  }
}
