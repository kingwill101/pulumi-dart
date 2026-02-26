// ignore_for_file: unused_element, unnecessary_cast

import 'key_data_response.dart';

/// Result data returned by getWorkforcePoolKey.
class GetWorkforcePoolKeyResult {
  /// The time after which the key will be permanently deleted and cannot be recovered. Note that the key may get purged before this time if the total limit of keys per provider is exceeded.
  final String expireTime;

  /// Immutable. Public half of the asymmetric key.
  final KeyDataResponse keyData;

  /// The resource name of the key.
  final String name;

  /// The state of the key.
  final String state;

  /// The purpose of the key.
  final String use;

  GetWorkforcePoolKeyResult({
    required this.expireTime,
    required this.keyData,
    required this.name,
    required this.state,
    required this.use,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expireTime'] = expireTime;
    map['keyData'] = keyData.toMap();
    map['name'] = name;
    map['state'] = state;
    map['use'] = use;
    return map;
  }

  factory GetWorkforcePoolKeyResult.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolKeyResult(
      expireTime: map['expireTime'] as String,
      keyData: KeyDataResponse.fromMap(
          (map['keyData'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      state: map['state'] as String,
      use: map['use'] as String,
    );
  }
}
