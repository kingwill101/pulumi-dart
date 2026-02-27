// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'rrset_routing_policy_wrr_policy_wrr_policy_item_response.dart';

/// Configures a RRSetRoutingPolicy that routes in a weighted round robin fashion.
class RRSetRoutingPolicyWrrPolicyResponse {
  final List<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse> items;
  final String kind;

  RRSetRoutingPolicyWrrPolicyResponse({
    required this.items,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = Input.encodeList<
        RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse,
        Map<String, dynamic>>(items, (value) => value.toMap());
    map['kind'] = kind;
    return map;
  }

  factory RRSetRoutingPolicyWrrPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyWrrPolicyResponse(
      items: Input.decodeList<RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse>(
          map['items'],
          (value) => RRSetRoutingPolicyWrrPolicyWrrPolicyItemResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
    );
  }
}
