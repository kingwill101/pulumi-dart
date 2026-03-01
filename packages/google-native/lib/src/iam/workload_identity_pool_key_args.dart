// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_data.dart';
import 'workload_identity_pool_key_use.dart';

/// {@template pulumi_iam_v1_workload_identity_pool_key_args_doc}
/// The set of arguments for WorkloadIdentityPoolKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_workload_identity_pool_key_args_doc}
class WorkloadIdentityPoolKeyArgs {
  /// Immutable. Public half of the asymmetric key.
  final pulumi.Input<KeyData>? keyData;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> providerId;

  /// The purpose of the key.
  final pulumi.Input<WorkloadIdentityPoolKeyUse> use;
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String> workloadIdentityPoolProviderKeyId;

  /// Creates a new [WorkloadIdentityPoolKeyArgs].
  /// [keyData] Immutable. Public half of the asymmetric key.
  /// [location] Optional.
  /// [project] Optional.
  /// [providerId] Required.
  /// [use] The purpose of the key.
  /// [workloadIdentityPoolId] Required.
  /// [workloadIdentityPoolProviderKeyId] Required. The ID to use for the key, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-].
  WorkloadIdentityPoolKeyArgs({
    KeyData? keyData,
    String? location,
    String? project,
    required String providerId,
    required WorkloadIdentityPoolKeyUse use,
    required String workloadIdentityPoolId,
    required String workloadIdentityPoolProviderKeyId,
  }) : keyData = pulumi.Input.asOptionalInput<KeyData>(keyData),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       providerId = pulumi.Input.asInput<String>(providerId),
       use = pulumi.Input.asInput<WorkloadIdentityPoolKeyUse>(use),
       workloadIdentityPoolId = pulumi.Input.asInput<String>(
         workloadIdentityPoolId,
       ),
       workloadIdentityPoolProviderKeyId = pulumi.Input.asInput<String>(
         workloadIdentityPoolProviderKeyId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyData':
          ?pulumi.Input.mapOptionalInputValue<KeyData, Map<String, dynamic>>(
            keyData,
            (value) => value.toMap(),
          ),
      'location': ?location,
      'project': ?project,
      'providerId': providerId,
      'use': pulumi.Input.mapInputValue<WorkloadIdentityPoolKeyUse, String>(
        use,
        (value) => value.value,
      ),
      'workloadIdentityPoolId': workloadIdentityPoolId,
      'workloadIdentityPoolProviderKeyId': workloadIdentityPoolProviderKeyId,
    };
  }

  factory WorkloadIdentityPoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolKeyArgs(
      keyData: map['keyData'] == null
          ? null
          : KeyData.fromMap((map['keyData'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      providerId: map['providerId'] as String,
      use: WorkloadIdentityPoolKeyUse.fromValue(map['use'] as String),
      workloadIdentityPoolId: map['workloadIdentityPoolId'] as String,
      workloadIdentityPoolProviderKeyId:
          map['workloadIdentityPoolProviderKeyId'] as String,
    );
  }
}
