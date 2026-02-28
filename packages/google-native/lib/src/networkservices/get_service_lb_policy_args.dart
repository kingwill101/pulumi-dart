// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_service_lb_policy_args_doc}
/// Arguments for getServiceLbPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_service_lb_policy_args_doc}
class GetServiceLbPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceLbPolicyId;

  /// Creates a new [GetServiceLbPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceLbPolicyId] Required.
  GetServiceLbPolicyArgs({
    required String location,
    String? project,
    required String serviceLbPolicyId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceLbPolicyId = pulumi.Input.asInput<String>(serviceLbPolicyId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceLbPolicyId'] = serviceLbPolicyId;
    return map;
  }

  factory GetServiceLbPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLbPolicyArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceLbPolicyId: map['serviceLbPolicyId'] as String,
    );
  }
}
