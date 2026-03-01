// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group.dart';

/// Definition of OriginGroups
class OriginGroups {
  /// The items (origin groups) in a distribution.
  final List<OriginGroup>? items;
  /// The number of origin groups.
  final int? quantity;

  /// Creates a new [OriginGroups].
  /// [items] The items (origin groups) in a distribution.
  /// [quantity] The number of origin groups.
  OriginGroups({
    this.items,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null ? null : pulumi.Input.encodeList<OriginGroup, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'quantity': ?quantity,
    };
  }

  factory OriginGroups.fromMap(Map<String, dynamic> map) {
    return OriginGroups(
      items: map['items'] == null ? null : pulumi.Input.decodeList<OriginGroup>(map['items'], (value) => OriginGroup.fromMap((value as Map).cast<String, dynamic>())),
      quantity: map['quantity'] == null ? null : map['quantity'] as int,
    );
  }
}

