// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for IngressPolicy.
class IngressPolicyArgs {
  /// The name of the Service Perimeter to add this resource to.
  final Input<String> ingressPolicyName;

  /// A GCP resource that is inside of the service perimeter.
  final Input<String> resource;

  IngressPolicyArgs({
    required this.ingressPolicyName,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ingressPolicyName'] = ingressPolicyName;
    map['resource'] = resource;
    return map;
  }

  factory IngressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IngressPolicyArgs(
      ingressPolicyName: Input.asInput<String>(map['ingressPolicyName']),
      resource: Input.asInput<String>(map['resource']),
    );
  }
}
