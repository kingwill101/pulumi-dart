// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'key_data.dart';
import 'workload_identity_pool_key_use.dart';

/// The set of arguments for WorkloadIdentityPoolKey.
class WorkloadIdentityPoolKeyArgs {
  /// Immutable. Public half of the asymmetric key.
  final Input<KeyData>? keyData;
  final Input<String>? location;
  final Input<String>? project;
  final Input<String> providerId;

  /// The purpose of the key.
  final Input<WorkloadIdentityPoolKeyUse> use;
  final Input<String> workloadIdentityPoolId;

  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value should be 4-32 characters, and may contain the characters [a-z0-9-].
  final Input<String> workloadIdentityPoolProviderKeyId;

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
          Input.mapOptionalInputValue<KeyData, Map<String, dynamic>>(
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
    map['use'] = Input.mapInputValue<WorkloadIdentityPoolKeyUse, String>(
        use, (value) => value.value);
    map['workloadIdentityPoolId'] = workloadIdentityPoolId;
    map['workloadIdentityPoolProviderKeyId'] =
        workloadIdentityPoolProviderKeyId;
    return map;
  }

  factory WorkloadIdentityPoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolKeyArgs(
      keyData: Input.asOptionalInput<KeyData>(map['keyData']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      providerId: Input.asInput<String>(map['providerId']),
      use: Input.asInput<WorkloadIdentityPoolKeyUse>(map['use']),
      workloadIdentityPoolId:
          Input.asInput<String>(map['workloadIdentityPoolId']),
      workloadIdentityPoolProviderKeyId:
          Input.asInput<String>(map['workloadIdentityPoolProviderKeyId']),
    );
  }
}
