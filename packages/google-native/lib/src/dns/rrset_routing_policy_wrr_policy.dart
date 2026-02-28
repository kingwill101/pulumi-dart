// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_wrr_policy_wrr_policy_item.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicy {
  final List<RRSetRoutingPolicyWrrPolicyWrrPolicyItem>? items;
  final String? kind;

  /// Creates a new [RRSetRoutingPolicyWrrPolicy].
  /// [items] Optional.
  /// [kind] Optional.
  RRSetRoutingPolicyWrrPolicy({
    this.items,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = pulumi.Input.encodeList<
          RRSetRoutingPolicyWrrPolicyWrrPolicyItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory RRSetRoutingPolicyWrrPolicy.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicy(
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItem>(
              map['items'],
              (value) => RRSetRoutingPolicyWrrPolicyWrrPolicyItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
