// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group_member_response.dart';

/// Definition of OriginGroupMembers
class OriginGroupMembersResponse {
  /// Items (origins) in an origin group.
  final pulumi.Input<List<OriginGroupMemberResponse>>? items;
  /// The number of origins in an origin group.
  final pulumi.Input<int>? quantity;

  /// Creates a new [OriginGroupMembersResponse].
  /// [items] Items (origins) in an origin group.
  /// [quantity] The number of origins in an origin group.
  OriginGroupMembersResponse({
    this.items,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<OriginGroupMemberResponse>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<OriginGroupMemberResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quantity': ?quantity,
    };
  }

  factory OriginGroupMembersResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupMembersResponse(
      items: map['items'] == null ? null : (pulumi.Input.decodeList<OriginGroupMemberResponse>(map['items'], (value) => OriginGroupMemberResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      quantity: map['quantity'] == null ? null : (map['quantity'] as int).input(),
    );
  }
}

