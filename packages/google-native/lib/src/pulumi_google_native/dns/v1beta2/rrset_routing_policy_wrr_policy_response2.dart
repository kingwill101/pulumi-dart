// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'rrset_routing_policy_wrr_policy_wrr_policy_item_response2.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicyResponse2 {
  final List<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse2> items;
  final String kind;

  RRSetRoutingPolicyWrrPolicyResponse2({
    required this.items,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = Input.encodeList<
        RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse2,
        Map<String, dynamic>>(items, (value) => value.toMap());
    map['kind'] = kind;
    return map;
  }

  factory RRSetRoutingPolicyWrrPolicyResponse2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyResponse2(
      items:
          Input.decodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse2>(
              map['items'],
              (value) =>
                  RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
    );
  }
}
