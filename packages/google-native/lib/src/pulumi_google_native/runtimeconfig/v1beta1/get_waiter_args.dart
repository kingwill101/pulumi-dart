// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getWaiter.
class GetWaiterArgs {
  final Input<String> configId;
  final Input<String>? project;
  final Input<String> waiterId;

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
      configId: Input.asInput<String>(map['configId']),
      project: Input.asOptionalInput<String>(map['project']),
      waiterId: Input.asInput<String>(map['waiterId']),
    );
  }
}
