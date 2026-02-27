// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWorkforcePool.
class GetWorkforcePoolArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> workforcePoolId;

  GetWorkforcePoolArgs({
    required this.location,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory GetWorkforcePoolArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkforcePoolArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      workforcePoolId: pulumi.Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
