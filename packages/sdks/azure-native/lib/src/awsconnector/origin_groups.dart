// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group.dart';

/// Definition of OriginGroups
class OriginGroups {
  /// The items (origin groups) in a distribution.
  final pulumi.Input<List<OriginGroup>>? items;
  /// The number of origin groups.
  final pulumi.Input<int>? quantity;

  /// Creates a new [OriginGroups].
  /// [items] The items (origin groups) in a distribution.
  /// [quantity] The number of origin groups.
  const OriginGroups({
    this.items,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<OriginGroup>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<OriginGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'quantity': ?quantity,
    };
  }

  factory OriginGroups.fromMap(Map<String, dynamic> map) {
    return OriginGroups(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OriginGroup>(guardedValue, (value) => OriginGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      quantity: (() { final guardedValue = map['quantity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

