// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../authz_policy_http_rule_from_not_source_ip_block/authz_policy_http_rule_from_not_source_ip_block.dart';
import '../authz_policy_http_rule_from_not_source_principal/authz_policy_http_rule_from_not_source_principal.dart';
import '../authz_policy_http_rule_from_not_source_resource/authz_policy_http_rule_from_not_source_resource.dart';

class AuthzPolicyHttpRuleFromNotSource {
  /// A list of IP addresses or IP address ranges to match against the source IP address of the request. Limited to 10 ipBlocks per Authorization Policy
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleFromNotSourceIpBlock>? ipBlocks;

  /// A list of identities derived from the client's certificate. This field will not match on a request unless mutual TLS is enabled for the Forwarding rule or Gateway. Each identity is a string whose value is matched against the URI SAN, or DNS SAN or the subject field in the client's certificate. The match can be exact, prefix, suffix or a substring match. One of exact, prefix, suffix or contains must be specified.
  /// Limited to 5 principals.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleFromNotSourcePrincipal>? principals;

  /// A list of resources to match against the resource of the source VM of a request.
  /// Limited to 5 resources.
  /// Structure is documented below.
  final List<AuthzPolicyHttpRuleFromNotSourceResource>? resources;

  AuthzPolicyHttpRuleFromNotSource({
    this.ipBlocks,
    this.principals,
    this.resources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ipBlocksValue = ipBlocks;
    if (ipBlocksValue != null) {
      map['ipBlocks'] = Input.encodeList<
          AuthzPolicyHttpRuleFromNotSourceIpBlock,
          Map<String, dynamic>>(ipBlocksValue, (value) => value.toMap());
    }
    final principalsValue = principals;
    if (principalsValue != null) {
      map['principals'] = Input.encodeList<
          AuthzPolicyHttpRuleFromNotSourcePrincipal,
          Map<String, dynamic>>(principalsValue, (value) => value.toMap());
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = Input.encodeList<
          AuthzPolicyHttpRuleFromNotSourceResource,
          Map<String, dynamic>>(resourcesValue, (value) => value.toMap());
    }
    return map;
  }

  factory AuthzPolicyHttpRuleFromNotSource.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromNotSource(
      ipBlocks: map['ipBlocks'] == null
          ? null
          : Input.decodeList<AuthzPolicyHttpRuleFromNotSourceIpBlock>(
              map['ipBlocks'],
              (value) => AuthzPolicyHttpRuleFromNotSourceIpBlock.fromMap(
                  (value as Map).cast<String, dynamic>())),
      principals: map['principals'] == null
          ? null
          : Input.decodeList<AuthzPolicyHttpRuleFromNotSourcePrincipal>(
              map['principals'],
              (value) => AuthzPolicyHttpRuleFromNotSourcePrincipal.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : Input.decodeList<AuthzPolicyHttpRuleFromNotSourceResource>(
              map['resources'],
              (value) => AuthzPolicyHttpRuleFromNotSourceResource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
