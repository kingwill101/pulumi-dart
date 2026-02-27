// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInboundSsoAssignment.
class GetInboundSsoAssignmentCloudidentityV1beta1Args {
  final pulumi.Input<String> inboundSsoAssignmentId;

  GetInboundSsoAssignmentCloudidentityV1beta1Args({
    required this.inboundSsoAssignmentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inboundSsoAssignmentId'] = inboundSsoAssignmentId;
    return map;
  }

  factory GetInboundSsoAssignmentCloudidentityV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return GetInboundSsoAssignmentCloudidentityV1beta1Args(
      inboundSsoAssignmentId:
          pulumi.Input.asInput<String>(map['inboundSsoAssignmentId']),
    );
  }
}
