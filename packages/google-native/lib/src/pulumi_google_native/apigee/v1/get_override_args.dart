// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOverride.
class GetOverrideArgs {
  final Input<String> environmentId;
  final Input<String> organizationId;
  final Input<String> overrideId;

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
      environmentId: Input.asInput<String>(map['environmentId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      overrideId: Input.asInput<String>(map['overrideId']),
    );
  }
}
