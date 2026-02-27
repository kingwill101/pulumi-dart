// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkforcePoolKey.
class GetWorkforcePoolKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workforcePoolId;

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
      keyId: pulumi.Input.asInput<String>(map['keyId']),
      location: pulumi.Input.asInput<String>(map['location']),
      providerId: pulumi.Input.asInput<String>(map['providerId']),
      workforcePoolId: pulumi.Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
