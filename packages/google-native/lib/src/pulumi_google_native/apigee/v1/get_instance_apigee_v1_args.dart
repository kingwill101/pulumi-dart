// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceApigeeV1Args {
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String> organizationId;

  GetInstanceApigeeV1Args({
    required this.instanceId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetInstanceApigeeV1Args.fromMap(Map<String, dynamic> map) {
    return GetInstanceApigeeV1Args(
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
