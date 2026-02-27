// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceIamPolicy.
class GetServiceIamPolicyServicemanagementV1Args {
  final pulumi.Input<String> serviceId;

  GetServiceIamPolicyServicemanagementV1Args({
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceId'] = serviceId;
    return map;
  }

  factory GetServiceIamPolicyServicemanagementV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetServiceIamPolicyServicemanagementV1Args(
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
    );
  }
}
