// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEnvgroup.
class GetEnvgroupArgs {
  final Input<String> envgroupId;
  final Input<String> organizationId;

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
      envgroupId: Input.asInput<String>(map['envgroupId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
