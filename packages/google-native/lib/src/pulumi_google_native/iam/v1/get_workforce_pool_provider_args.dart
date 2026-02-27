// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkforcePoolProvider.
class GetWorkforcePoolProviderArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> providerId;
  final pulumi.Input<String> workforcePoolId;

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
      location: pulumi.Input.asInput<String>(map['location']),
      providerId: pulumi.Input.asInput<String>(map['providerId']),
      workforcePoolId: pulumi.Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
