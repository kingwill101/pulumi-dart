// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getServiceIamPolicy.
class GetServiceIamPolicyEndpointsArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> serviceName;

  GetServiceIamPolicyEndpointsArgs({
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceIamPolicyEndpointsArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceIamPolicyEndpointsArgs(
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
    );
  }
}
