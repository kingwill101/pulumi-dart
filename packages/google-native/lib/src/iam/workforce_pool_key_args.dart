// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_data.dart';
import 'workforce_pool_key_use.dart';

/// {@template pulumi_iam_v1_workforce_pool_key_args_doc}
/// The set of arguments for WorkforcePoolKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_workforce_pool_key_args_doc}
class WorkforcePoolKeyArgs {
  /// Immutable. Public half of the asymmetric key.
  final pulumi.Input<KeyData>? keyData;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> providerId;

  /// The purpose of the key.
  final pulumi.Input<WorkforcePoolKeyUse> use;
  final pulumi.Input<String> workforcePoolId;

  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final pulumi.Input<String> workforcePoolProviderKeyId;

  /// Creates a new [WorkforcePoolKeyArgs].
  /// [keyData] Immutable. Public half of the asymmetric key.
  /// [location] Optional.
  /// [providerId] Required.
  /// [use] The purpose of the key.
  /// [workforcePoolId] Required.
  /// [workforcePoolProviderKeyId] Required. The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  WorkforcePoolKeyArgs({
    KeyData? keyData,
    String? location,
    required String providerId,
    required WorkforcePoolKeyUse use,
    required String workforcePoolId,
    required String workforcePoolProviderKeyId,
  })  : keyData = pulumi.Input.asOptionalInput<KeyData>(keyData),
        location = pulumi.Input.asOptionalInput<String>(location),
        providerId = pulumi.Input.asInput<String>(providerId),
        use = pulumi.Input.asInput<WorkforcePoolKeyUse>(use),
        workforcePoolId = pulumi.Input.asInput<String>(workforcePoolId),
        workforcePoolProviderKeyId =
            pulumi.Input.asInput<String>(workforcePoolProviderKeyId);

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
    map['providerId'] = providerId;
    map['use'] = pulumi.Input.mapInputValue<WorkforcePoolKeyUse, String>(
        use, (value) => value.value);
    map['workforcePoolId'] = workforcePoolId;
    map['workforcePoolProviderKeyId'] = workforcePoolProviderKeyId;
    return map;
  }

  factory WorkforcePoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolKeyArgs(
      keyData: map['keyData'] == null
          ? null
          : KeyData.fromMap((map['keyData'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      providerId: map['providerId'] as String,
      use: WorkforcePoolKeyUse.fromValue(map['use'] as String),
      workforcePoolId: map['workforcePoolId'] as String,
      workforcePoolProviderKeyId: map['workforcePoolProviderKeyId'] as String,
    );
  }
}
