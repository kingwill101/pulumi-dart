// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getInboundSsoAssignment.
class GetInboundSsoAssignmentArgs2 {
  final Input<String> inboundSsoAssignmentId;

  GetInboundSsoAssignmentArgs2({
    required this.inboundSsoAssignmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSsoAssignmentId'] = inboundSsoAssignmentId;
    return map;
  }

  factory GetInboundSsoAssignmentArgs2.fromMap(Map<String, dynamic> map) {
    return GetInboundSsoAssignmentArgs2(
      inboundSsoAssignmentId:
          Input.asInput<String>(map['inboundSsoAssignmentId']),
    );
  }
}
