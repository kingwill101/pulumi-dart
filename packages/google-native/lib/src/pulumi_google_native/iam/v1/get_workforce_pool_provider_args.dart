// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWorkforcePoolProvider.
class GetWorkforcePoolProviderArgs {
  final Input<String> location;
  final Input<String> providerId;
  final Input<String> workforcePoolId;

  GetWorkforcePoolProviderArgs({
    required this.location,
    required this.providerId,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['providerId'] = providerId;
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory GetWorkforcePoolProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolProviderArgs(
      location: Input.asInput<String>(map['location']),
      providerId: Input.asInput<String>(map['providerId']),
      workforcePoolId: Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
