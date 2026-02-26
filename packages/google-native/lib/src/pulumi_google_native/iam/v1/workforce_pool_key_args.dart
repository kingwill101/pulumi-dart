// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'key_data.dart';
import 'workforce_pool_key_use.dart';

/// The set of arguments for WorkforcePoolKey.
class WorkforcePoolKeyArgs {
  /// Immutable. Public half of the asymmetric key.
  final Input<KeyData>? keyData;
  final Input<String>? location;
  final Input<String> providerId;

  /// The purpose of the key.
  final Input<WorkforcePoolKeyUse> use;
  final Input<String> workforcePoolId;

  /// Required. The ID to use for the key, which becomes the final component of the resource name. This value must be 4-32 characters, and may contain the characters [a-z0-9-].
  final Input<String> workforcePoolProviderKeyId;

  WorkforcePoolKeyArgs({
    this.keyData,
    this.location,
    required this.providerId,
    required this.use,
    required this.workforcePoolId,
    required this.workforcePoolProviderKeyId,
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
    map['providerId'] = providerId;
    map['use'] = Input.mapInputValue<WorkforcePoolKeyUse, String>(
        use, (value) => value.value);
    map['workforcePoolId'] = workforcePoolId;
    map['workforcePoolProviderKeyId'] = workforcePoolProviderKeyId;
    return map;
  }

  factory WorkforcePoolKeyArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolKeyArgs(
      keyData: Input.asOptionalInput<KeyData>(map['keyData']),
      location: Input.asOptionalInput<String>(map['location']),
      providerId: Input.asInput<String>(map['providerId']),
      use: Input.asInput<WorkforcePoolKeyUse>(map['use']),
      workforcePoolId: Input.asInput<String>(map['workforcePoolId']),
      workforcePoolProviderKeyId:
          Input.asInput<String>(map['workforcePoolProviderKeyId']),
    );
  }
}
