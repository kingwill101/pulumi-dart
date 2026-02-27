// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInboundSsoAssignment.
class GetInboundSsoAssignmentArgs {
  final Input<String> inboundSsoAssignmentId;

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
          Input.asInput<String>(map['inboundSsoAssignmentId']),
    );
  }
}
