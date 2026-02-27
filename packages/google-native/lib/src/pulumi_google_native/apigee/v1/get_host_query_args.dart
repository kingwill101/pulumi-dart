// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getHostQuery.
class GetHostQueryArgs {
  final Input<String> hostQueryId;
  final Input<String> organizationId;

  GetHostQueryArgs({
    required this.hostQueryId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostQueryId'] = hostQueryId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetHostQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetHostQueryArgs(
      hostQueryId: Input.asInput<String>(map['hostQueryId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
