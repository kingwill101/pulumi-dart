// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServicePerimeter.
class GetServicePerimeterAccesscontextmanagerV1betaArgs {
  final pulumi.Input<String> accessPolicyId;
  final pulumi.Input<String> servicePerimeterId;

  GetServicePerimeterAccesscontextmanagerV1betaArgs({
    required this.accessPolicyId,
    required this.servicePerimeterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessPolicyId'] = accessPolicyId;
    map['servicePerimeterId'] = servicePerimeterId;
    return map;
  }

  factory GetServicePerimeterAccesscontextmanagerV1betaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetServicePerimeterAccesscontextmanagerV1betaArgs(
      accessPolicyId: pulumi.Input.asInput<String>(map['accessPolicyId']),
      servicePerimeterId:
          pulumi.Input.asInput<String>(map['servicePerimeterId']),
    );
  }
}
