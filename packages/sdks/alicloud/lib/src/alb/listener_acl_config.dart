// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_acl_config_acl_relation.dart';

class ListenerAclConfig {
  /// The ACLs that are associated with the listener. See `acl_relations` below for details.
  final pulumi.Input<List<ListenerAclConfigAclRelation>>? aclRelations;
  /// The type of the ACL. Valid values: `White` Or `Black`. `White`: specifies the ACL as a whitelist. Only requests from the IP addresses or CIDR blocks in the ACL are forwarded. Whitelists apply to scenarios where only specific IP addresses are allowed to access an application. Risks may occur if the whitelist is improperly set. After you set a whitelist for an Application Load Balancer (ALB) listener, only requests from IP addresses that are added to the whitelist are distributed by the listener. If the whitelist is enabled without IP addresses specified, the ALB listener does not forward requests. `Black`: All requests from the IP addresses or CIDR blocks in the ACL are denied. The blacklist is used to prevent specified IP addresses from accessing an application. If the blacklist is enabled but the corresponding ACL does not contain IP addresses, the ALB listener forwards all requests.
  final pulumi.Input<String>? aclType;

  /// Creates a new [ListenerAclConfig].
  /// [aclRelations] The ACLs that are associated with the listener. See `acl_relations` below for details.
  /// [aclType] The type of the ACL. Valid values: `White` Or `Black`. `White`: specifies the ACL as a whitelist. Only requests from the IP addresses or CIDR blocks in the ACL are forwarded. Whitelists apply to scenarios where only specific IP addresses are allowed to access an application. Risks may occur if the whitelist is improperly set. After you set a whitelist for an Application Load Balancer (ALB) listener, only requests from IP addresses that are added to the whitelist are distributed by the listener. If the whitelist is enabled without IP addresses specified, the ALB listener does not forward requests. `Black`: All requests from the IP addresses or CIDR blocks in the ACL are denied. The blacklist is used to prevent specified IP addresses from accessing an application. If the blacklist is enabled but the corresponding ACL does not contain IP addresses, the ALB listener forwards all requests.
  const ListenerAclConfig({
    this.aclRelations,
    this.aclType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclRelations': ?pulumi.Input.mapOptionalInputValue<List<ListenerAclConfigAclRelation>, List<Map<String, dynamic>>>(aclRelations, (value) => pulumi.Input.encodeList<ListenerAclConfigAclRelation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'aclType': ?aclType,
    };
  }

  factory ListenerAclConfig.fromMap(Map<String, dynamic> map) {
    return ListenerAclConfig(
      aclRelations: (() { final guardedValue = map['aclRelations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListenerAclConfigAclRelation>(guardedValue, (value) => ListenerAclConfigAclRelation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      aclType: (() { final guardedValue = map['aclType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

