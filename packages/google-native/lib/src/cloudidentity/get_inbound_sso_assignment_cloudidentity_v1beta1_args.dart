// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudidentity_v1beta1_get_inbound_sso_assignment_cloudidentity_v1beta1_args_doc}
/// Arguments for getInboundSsoAssignment.
/// {@endtemplate}
/// {@macro pulumi_cloudidentity_v1beta1_get_inbound_sso_assignment_cloudidentity_v1beta1_args_doc}
class GetInboundSsoAssignmentCloudidentityV1beta1Args {
  final pulumi.Input<String> inboundSsoAssignmentId;

  /// Creates a new [GetInboundSsoAssignmentCloudidentityV1beta1Args].
  /// [inboundSsoAssignmentId] Required.
  GetInboundSsoAssignmentCloudidentityV1beta1Args({
    required String inboundSsoAssignmentId,
  }) : inboundSsoAssignmentId = pulumi.Input.asInput<String>(
         inboundSsoAssignmentId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'inboundSsoAssignmentId': inboundSsoAssignmentId};
  }

  factory GetInboundSsoAssignmentCloudidentityV1beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInboundSsoAssignmentCloudidentityV1beta1Args(
      inboundSsoAssignmentId: map['inboundSsoAssignmentId'] as String,
    );
  }
}
