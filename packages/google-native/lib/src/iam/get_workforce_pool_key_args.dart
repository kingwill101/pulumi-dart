// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_v1_get_workforce_pool_key_args_doc}
/// Arguments for getWorkforcePoolKey.
/// {@endtemplate}
/// {@macro pulumi_iam_v1_get_workforce_pool_key_args_doc}
class GetWorkforcePoolKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workforcePoolId;

  /// Creates a new [GetWorkforcePoolKeyArgs].
  /// [keyId] Required.
  /// [location] Required.
  /// [providerId] Required.
  /// [workforcePoolId] Required.
  GetWorkforcePoolKeyArgs({
    required String keyId,
    required String location,
    required String providerId,
    required String workforcePoolId,
  })  : keyId = pulumi.Input.asInput<String>(keyId),
        location = pulumi.Input.asInput<String>(location),
        providerId = pulumi.Input.asInput<String>(providerId),
        workforcePoolId = pulumi.Input.asInput<String>(workforcePoolId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyId'] = keyId;
    map['location'] = location;
    map['providerId'] = providerId;
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory GetWorkforcePoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolKeyArgs(
      keyId: map['keyId'] as String,
      location: map['location'] as String,
      providerId: map['providerId'] as String,
      workforcePoolId: map['workforcePoolId'] as String,
    );
  }
}
