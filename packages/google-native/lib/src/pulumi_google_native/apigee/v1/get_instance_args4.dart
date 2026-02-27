// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInstance.
class GetInstanceArgs4 {
  final Input<String> instanceId;
  final Input<String> organizationId;

  GetInstanceArgs4({
    required this.instanceId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetInstanceArgs4.fromMap(Map<String, dynamic> map) {
    return GetInstanceArgs4(
      instanceId: Input.asInput<String>(map['instanceId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
