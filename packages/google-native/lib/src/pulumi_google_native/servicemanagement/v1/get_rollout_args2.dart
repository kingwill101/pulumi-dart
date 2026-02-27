// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRollout.
class GetRolloutArgs2 {
  final Input<String> rolloutId;
  final Input<String> serviceName;

  GetRolloutArgs2({
    required this.rolloutId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['rolloutId'] = rolloutId;
    map['serviceName'] = serviceName;
    return map;
  }

  factory GetRolloutArgs2.fromMap(Map<String, dynamic> map) {
    return GetRolloutArgs2(
      rolloutId: Input.asInput<String>(map['rolloutId']),
      serviceName: Input.asInput<String>(map['serviceName']),
    );
  }
}
