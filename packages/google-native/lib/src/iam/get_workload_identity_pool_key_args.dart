// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_workload_identity_pool_key_args_doc}
/// Arguments for getWorkloadIdentityPoolKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_workload_identity_pool_key_args_doc}
class GetWorkloadIdentityPoolKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Creates a new [GetWorkloadIdentityPoolKeyArgs].
  /// [keyId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [providerId] Required.
  /// [workloadIdentityPoolId] Required.
  GetWorkloadIdentityPoolKeyArgs({
    required String keyId,
    required String location,
    String? project,
    required String providerId,
    required String workloadIdentityPoolId,
  })  : keyId = pulumi.Input.asInput<String>(keyId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        providerId = pulumi.Input.asInput<String>(providerId),
        workloadIdentityPoolId =
            pulumi.Input.asInput<String>(workloadIdentityPoolId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['providerId'] = providerId;
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    return map;
  }

  factory GetWorkloadIdentityPoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolKeyArgs(
      keyId: map['keyId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      providerId: map['providerId'] as String,
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
    );
  }
}
