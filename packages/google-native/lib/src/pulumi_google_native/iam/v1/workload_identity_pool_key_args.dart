// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_data.dart';
import 'workload_identity_pool_key_use.dart';

/// The set of arguments for WorkloadIdentityPoolKey.
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

  WorkloadIdentityPoolKeyArgs({
    this.keyData,
    this.location,
    this.project,
    required this.providerId,
    required this.use,
    required this.workloadIdentityPoolId,
    required this.workloadIdentityPoolProviderKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyDataValue = keyData;
    if (keyDataValue != null) {
      map['keyData'] =
          pulumi.Input.mapOptionalInputValue<KeyData, Map<String, dynamic>>(
              keyDataValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['providerId'] = providerId;
    map['use'] = pulumi.Input.mapInputValue<WorkloadIdentityPoolKeyUse, String>(
        use, (value) => value.value);
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    map['workloadIdentityPoolProviderKeyId'] =
        workloadIdentityPoolProviderKeyId;
    return map;
  }

  factory WorkloadIdentityPoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolKeyArgs(
      keyData: pulumi.Input.asOptionalInput<KeyData>(map['keyData']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      providerId: pulumi.Input.asInput<String>(map['providerId']),
      use: pulumi.Input.asInput<WorkloadIdentityPoolKeyUse>(map['use']),
      workloadIdentityPoolId:
          pulumi.Input.asInput<String>(map['workloadIdentityPoolId']),
      workloadIdentityPoolProviderKeyId: pulumi.Input.asInput<String>(
          map['workloadIdentityPoolProviderKeyId']),
    );
  }
}
