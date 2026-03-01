// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_alb_listener_acl_attachment_listener_acl_attachment_args_doc}
/// The set of arguments for ListenerAclAttachment.
/// {@endtemplate}
/// {@macro pulumi_alb_listener_acl_attachment_listener_acl_attachment_args_doc}
class ListenerAclAttachmentArgs {
  /// The ID list of the access policy group bound by the listener.
  final pulumi.Input<String> aclId;
  /// Access control type:
  /// - **White**: only requests from IP addresses or address segments in the selected access control list are forwarded. The whitelist applies to scenarios where only specific IP addresses are allowed to access. There are certain business risks in setting up a whitelist. Once the whitelist is set, only the IP addresses in the whitelist can access the load balancer listener. If whitelist access is enabled but no IP addresses are added to the access policy group, the server load balancer listener forwards all requests.
  /// - **Black**: All requests from IP addresses or address segments in the selected access control list are not forwarded. Blacklists are applicable to scenarios where only certain IP addresses are restricted. If blacklist access is enabled and no IP is added to the access policy group, the server load balancer listener forwards all requests.
  final pulumi.Input<String> aclType;
  /// Listener instance ID.
  final pulumi.Input<String> listenerId;

  /// Creates a new [ListenerAclAttachmentArgs].
  /// [aclId] The ID list of the access policy group bound by the listener.
  /// [aclType] Access control type:
  /// [listenerId] Listener instance ID.
  ListenerAclAttachmentArgs({
    required String aclId,
    required String aclType,
    required String listenerId,
  }) :
      aclId = pulumi.Input.asInput<String>(aclId),
      aclType = pulumi.Input.asInput<String>(aclType),
      listenerId = pulumi.Input.asInput<String>(listenerId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': aclId,
      'aclType': aclType,
      'listenerId': listenerId,
    };
  }

  factory ListenerAclAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return ListenerAclAttachmentArgs(
      aclId: map['aclId'] as String,
      aclType: map['aclType'] as String,
      listenerId: map['listenerId'] as String,
    );
  }
}

