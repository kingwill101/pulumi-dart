// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getWaiter.
class GetWaiterArgs {
  final pulumi.Input<String> configId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> waiterId;

  GetWaiterArgs({
    required this.configId,
    this.project,
    required this.waiterId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configId'] = configId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['waiterId'] = waiterId;
    return map;
  }

  factory GetWaiterArgs.fromMap(Map<String, dynamic> map) {
    return GetWaiterArgs(
      configId: pulumi.Input.asInput<String>(map['configId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      waiterId: pulumi.Input.asInput<String>(map['waiterId']),
    );
  }
}
