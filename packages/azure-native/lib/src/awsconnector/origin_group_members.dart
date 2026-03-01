// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group_member.dart';

/// Definition of OriginGroupMembers
class OriginGroupMembers {
  /// Items (origins) in an origin group.
  final List<OriginGroupMember>? items;
  /// The number of origins in an origin group.
  final int? quantity;

  /// Creates a new [OriginGroupMembers].
  /// [items] Items (origins) in an origin group.
  /// [quantity] The number of origins in an origin group.
  OriginGroupMembers({
    this.items,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null ? null : pulumi.Input.encodeList<OriginGroupMember, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'quantity': ?quantity,
    };
  }

  factory OriginGroupMembers.fromMap(Map<String, dynamic> map) {
    return OriginGroupMembers(
      items: map['items'] == null ? null : pulumi.Input.decodeList<OriginGroupMember>(map['items'], (value) => OriginGroupMember.fromMap((value as Map).cast<String, dynamic>())),
      quantity: map['quantity'] == null ? null : map['quantity'] as int,
    );
  }
}

