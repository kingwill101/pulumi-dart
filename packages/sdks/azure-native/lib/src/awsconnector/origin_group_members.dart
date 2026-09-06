// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group_member.dart';

/// Definition of OriginGroupMembers
class OriginGroupMembers {
  /// Items (origins) in an origin group.
  final pulumi.Input<List<OriginGroupMember>?>? items;
  /// The number of origins in an origin group.
  final pulumi.Input<int?>? quantity;

  /// Creates a new [OriginGroupMembers].
  /// [items] Items (origins) in an origin group.
  /// [quantity] The number of origins in an origin group.
  const OriginGroupMembers({
    this.items,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<OriginGroupMember>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<OriginGroupMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quantity': ?quantity,
    };
  }

  factory OriginGroupMembers.fromMap(Map<String, dynamic> map) {
    return OriginGroupMembers(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OriginGroupMember>(guardedValue, (value) => OriginGroupMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
