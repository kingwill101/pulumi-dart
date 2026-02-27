// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkforcePoolKey.
class GetWorkforcePoolKeyArgs {
  final Input<String> keyId;
  final Input<String> location;
  final Input<String> providerId;
  final Input<String> workforcePoolId;

  GetWorkforcePoolKeyArgs({
    required this.keyId,
    required this.location,
    required this.providerId,
    required this.workforcePoolId,
  });

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
      keyId: Input.asInput<String>(map['keyId']),
      location: Input.asInput<String>(map['location']),
      providerId: Input.asInput<String>(map['providerId']),
      workforcePoolId: Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
