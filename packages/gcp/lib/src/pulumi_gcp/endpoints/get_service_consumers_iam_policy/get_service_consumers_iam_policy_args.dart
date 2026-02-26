// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getServiceConsumersIamPolicy.
class GetServiceConsumersIamPolicyArgs {
  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> consumerProject;

  /// The name of the service. Used to find the parent resource to bind the IAM policy to
  final Input<String> serviceName;

  GetServiceConsumersIamPolicyArgs({
    required this.consumerProject,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumerProject'] = consumerProject;
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetServiceConsumersIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConsumersIamPolicyArgs(
      consumerProject: Input.asInput<String>(map['consumerProject']),
      serviceName: Input.asInput<String>(map['serviceName']),
    );
  }
}
