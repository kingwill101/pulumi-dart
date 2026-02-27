// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getAppgroup.
class GetAppgroupArgs {
  final pulumi.Input<String> appgroupId;
  final pulumi.Input<String> organizationId;

  GetAppgroupArgs({
    required this.appgroupId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appgroupId'] = appgroupId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetAppgroupArgs.fromMap(Map<String, dynamic> map) {
    return GetAppgroupArgs(
      appgroupId: pulumi.Input.asInput<String>(map['appgroupId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
