// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_connection_policy_args_doc}
/// Arguments for getServiceConnectionPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_connection_policy_args_doc}
class GetServiceConnectionPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionPolicyId;

  /// Creates a new [GetServiceConnectionPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceConnectionPolicyId] Required.
  GetServiceConnectionPolicyArgs({
    required String location,
    String? project,
    required String serviceConnectionPolicyId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        serviceConnectionPolicyId =
            pulumi.Input.asInput<String>(serviceConnectionPolicyId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceConnectionPolicyId'] = serviceConnectionPolicyId;
    return map;
  }

  factory GetServiceConnectionPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionPolicyArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serviceConnectionPolicyId: map['serviceConnectionPolicyId'] as String,
    );
  }
}
