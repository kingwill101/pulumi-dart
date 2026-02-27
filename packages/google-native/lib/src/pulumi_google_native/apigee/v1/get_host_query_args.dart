// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getHostQuery.
class GetHostQueryArgs {
  final pulumi.Input<String> hostQueryId;
  final pulumi.Input<String> organizationId;

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
      hostQueryId: pulumi.Input.asInput<String>(map['hostQueryId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
