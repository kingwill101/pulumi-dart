// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSharedflow.
class GetSharedflowArgs {
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> sharedflowId;

  GetSharedflowArgs({
    required this.organizationId,
    required this.sharedflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['organizationId'] = organizationId;
    map['sharedflowId'] = sharedflowId;
    return map;
  }

  factory GetSharedflowArgs.fromMap(Map<String, dynamic> map) {
    return GetSharedflowArgs(
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      sharedflowId: pulumi.Input.asInput<String>(map['sharedflowId']),
    );
  }
}
