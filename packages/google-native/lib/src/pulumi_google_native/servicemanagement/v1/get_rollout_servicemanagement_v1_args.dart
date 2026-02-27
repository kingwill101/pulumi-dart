// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRollout.
class GetRolloutServicemanagementV1Args {
  final pulumi.Input<String> rolloutId;
  final pulumi.Input<String> serviceName;

  GetRolloutServicemanagementV1Args({
    required this.rolloutId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rolloutId'] = rolloutId;
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetRolloutServicemanagementV1Args.fromMap(Map<String, dynamic> map) {
    return GetRolloutServicemanagementV1Args(
      rolloutId: pulumi.Input.asInput<String>(map['rolloutId']),
      serviceName: pulumi.Input.asInput<String>(map['serviceName']),
    );
  }
}
