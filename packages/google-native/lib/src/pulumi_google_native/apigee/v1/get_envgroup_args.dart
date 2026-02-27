// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEnvgroup.
class GetEnvgroupArgs {
  final pulumi.Input<String> envgroupId;
  final pulumi.Input<String> organizationId;

  GetEnvgroupArgs({
    required this.envgroupId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envgroupId'] = envgroupId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetEnvgroupArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupArgs(
      envgroupId: pulumi.Input.asInput<String>(map['envgroupId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
