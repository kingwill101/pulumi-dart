// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ListenerAclAttachment resources.
class ListenerAclAttachmentState {
  /// The ID list of the access policy group bound by the listener.
  final pulumi.Input<String>? aclId;
  /// Access control type:
  /// - **White**: only requests from IP addresses or address segments in the selected access control list are forwarded. The whitelist applies to scenarios where only specific IP addresses are allowed to access. There are certain business risks in setting up a whitelist. Once the whitelist is set, only the IP addresses in the whitelist can access the load balancer listener. If whitelist access is enabled but no IP addresses are added to the access policy group, the server load balancer listener forwards all requests.
  /// - **Black**: All requests from IP addresses or address segments in the selected access control list are not forwarded. Blacklists are applicable to scenarios where only certain IP addresses are restricted. If blacklist access is enabled and no IP is added to the access policy group, the server load balancer listener forwards all requests.
  final pulumi.Input<String>? aclType;
  /// Listener instance ID.
  final pulumi.Input<String>? listenerId;
  /// Listener Status.
  final pulumi.Input<String>? status;

  /// Creates a new [ListenerAclAttachmentState].
  /// [aclId] The ID list of the access policy group bound by the listener.
  /// [aclType] Access control type:
  /// [listenerId] Listener instance ID.
  /// [status] Listener Status.
  ListenerAclAttachmentState({
    this.aclId,
    this.aclType,
    this.listenerId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclId': ?aclId,
      'aclType': ?aclType,
      'listenerId': ?listenerId,
      'status': ?status,
    };
  }

  factory ListenerAclAttachmentState.fromMap(Map<String, dynamic> map) {
    return ListenerAclAttachmentState(
      aclId: map['aclId'] == null ? null : (map['aclId'] as String).input(),
      aclType: map['aclType'] == null ? null : (map['aclType'] as String).input(),
      listenerId: map['listenerId'] == null ? null : (map['listenerId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

