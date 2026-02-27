// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOverride.
class GetOverrideArgs {
  final pulumi.Input<String> environmentId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> overrideId;

  GetOverrideArgs({
    required this.environmentId,
    required this.organizationId,
    required this.overrideId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['environmentId'] = environmentId;
    map['organizationId'] = organizationId;
    map['overrideId'] = overrideId;
    return map;
  }

  factory GetOverrideArgs.fromMap(Map<String, dynamic> map) {
    return GetOverrideArgs(
      environmentId: pulumi.Input.asInput<String>(map['environmentId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      overrideId: pulumi.Input.asInput<String>(map['overrideId']),
    );
  }
}
