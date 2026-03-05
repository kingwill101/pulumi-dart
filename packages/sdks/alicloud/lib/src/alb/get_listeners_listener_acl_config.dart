// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener_acl_config_acl_relation.dart';

class GetListenersListenerAclConfig {
  /// The ACLs that are associated with the listener.
  final pulumi.Input<List<GetListenersListenerAclConfigAclRelation>> aclRelations;
  /// The type of the ACL. Valid values: `White` Or `Black`. `White`: specifies the ACL as a whitelist. Only requests from the IP addresses or CIDR blocks in the ACL are forwarded. Whitelists apply to scenarios where only specific IP addresses are allowed to access an application. Risks may occur if the whitelist is improperly set. After you set a whitelist for an Application Load Balancer (ALB) listener, only requests from IP addresses that are added to the whitelist are distributed by the listener. If the whitelist is enabled without IP addresses specified, the ALB listener does not forward requests. `Black`: All requests from the IP addresses or CIDR blocks in the ACL are denied. The blacklist is used to prevent specified IP addresses from accessing an application. If the blacklist is enabled but the corresponding ACL does not contain IP addresses, the ALB listener forwards all requests.
  final pulumi.Input<String> aclType;

  /// Creates a new [GetListenersListenerAclConfig].
  /// [aclRelations] The ACLs that are associated with the listener.
  /// [aclType] The type of the ACL. Valid values: `White` Or `Black`. `White`: specifies the ACL as a whitelist. Only requests from the IP addresses or CIDR blocks in the ACL are forwarded. Whitelists apply to scenarios where only specific IP addresses are allowed to access an application. Risks may occur if the whitelist is improperly set. After you set a whitelist for an Application Load Balancer (ALB) listener, only requests from IP addresses that are added to the whitelist are distributed by the listener. If the whitelist is enabled without IP addresses specified, the ALB listener does not forward requests. `Black`: All requests from the IP addresses or CIDR blocks in the ACL are denied. The blacklist is used to prevent specified IP addresses from accessing an application. If the blacklist is enabled but the corresponding ACL does not contain IP addresses, the ALB listener forwards all requests.
  GetListenersListenerAclConfig({
    required this.aclRelations,
    required this.aclType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclRelations': pulumi.Input.mapInputValue<List<GetListenersListenerAclConfigAclRelation>, List<Map<String, dynamic>>>(aclRelations, (value) => pulumi.Input.encodeList<GetListenersListenerAclConfigAclRelation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aclType': aclType,
    };
  }

  factory GetListenersListenerAclConfig.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerAclConfig(
      aclRelations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerAclConfigAclRelation>(map['aclRelations']!, (value) => GetListenersListenerAclConfigAclRelation.fromMap((value as Map).cast<String, dynamic>()))),
      aclType: pulumi.Input.fromValue(map['aclType'] as String),
    );
  }
}

