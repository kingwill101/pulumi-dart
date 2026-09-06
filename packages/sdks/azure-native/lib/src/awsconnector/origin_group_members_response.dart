// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group_member_response.dart';

/// Definition of OriginGroupMembers
class OriginGroupMembersResponse {
  /// Items (origins) in an origin group.
  final pulumi.Input<List<OriginGroupMemberResponse>?>? items;
  /// The number of origins in an origin group.
  final pulumi.Input<int?>? quantity;

  /// Creates a new [OriginGroupMembersResponse].
  /// [items] Items (origins) in an origin group.
  /// [quantity] The number of origins in an origin group.
  const OriginGroupMembersResponse({
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
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OriginGroupMemberResponse>(guardedValue, (value) => OriginGroupMemberResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
