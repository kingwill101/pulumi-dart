// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_accesscontextmanager_ingress_policy_ingress_policy_args_doc}
/// The set of arguments for IngressPolicy.
/// {@endtemplate}
/// {@macro pulumi_accesscontextmanager_ingress_policy_ingress_policy_args_doc}
class IngressPolicyArgs {
  /// The name of the Service Perimeter to add this resource to.
  final pulumi.Input<String> ingressPolicyName;

  /// A GCP resource that is inside of the service perimeter.
  final pulumi.Input<String> resource;

  /// Creates a new [IngressPolicyArgs].
  /// [ingressPolicyName] The name of the Service Perimeter to add this resource to.
  /// [resource] A GCP resource that is inside of the service perimeter.
  IngressPolicyArgs({
    required String ingressPolicyName,
    required String resource,
  }) : ingressPolicyName = pulumi.Input.asInput<String>(ingressPolicyName),
       resource = pulumi.Input.asInput<String>(resource);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ingressPolicyName': ingressPolicyName,
      'resource': resource,
    };
  }

  factory IngressPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IngressPolicyArgs(
      ingressPolicyName: map['ingressPolicyName'] as String,
      resource: map['resource'] as String,
    );
  }
}
