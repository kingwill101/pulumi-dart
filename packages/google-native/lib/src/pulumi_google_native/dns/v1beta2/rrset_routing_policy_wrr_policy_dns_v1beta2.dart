// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_wrr_policy_wrr_policy_item_dns_v1beta2.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicyDnsV1beta2 {
  final List<RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2>? items;
  final String? kind;

  RRSetRoutingPolicyWrrPolicyDnsV1beta2({
    this.items,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = pulumi.Input.encodeList<
          RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory RRSetRoutingPolicyWrrPolicyDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyDnsV1beta2(
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<
                  RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2>(
              map['items'],
              (value) =>
                  RRSetRoutingPolicyWrrPolicyWrrPolicyItemDnsV1beta2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
