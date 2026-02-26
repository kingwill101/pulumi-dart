// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'rrset_routing_policy_wrr_policy_wrr_policy_item2.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicy2 {
  final List<RRSetRoutingPolicyWrrPolicyWrrPolicyItem2>? items;
  final String? kind;

  RRSetRoutingPolicyWrrPolicy2({
    this.items,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = Input.encodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItem2,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory RRSetRoutingPolicyWrrPolicy2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicy2(
      items: map['items'] == null
          ? null
          : Input.decodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItem2>(
              map['items'],
              (value) => RRSetRoutingPolicyWrrPolicyWrrPolicyItem2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
