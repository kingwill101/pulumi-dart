// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInboundSsoAssignment.
class GetInboundSsoAssignmentArgs {
  final pulumi.Input<String> inboundSsoAssignmentId;

  GetInboundSsoAssignmentArgs({
    required this.inboundSsoAssignmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSsoAssignmentId'] = inboundSsoAssignmentId;
    return map;
  }

  factory GetInboundSsoAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundSsoAssignmentArgs(
      inboundSsoAssignmentId:
          pulumi.Input.asInput<String>(map['inboundSsoAssignmentId']),
    );
  }
}
