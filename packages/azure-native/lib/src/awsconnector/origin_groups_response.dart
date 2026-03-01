// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group_response.dart';

/// Definition of OriginGroups
class OriginGroupsResponse {
  /// The items (origin groups) in a distribution.
  final List<OriginGroupResponse>? items;
  /// The number of origin groups.
  final int? quantity;

  /// Creates a new [OriginGroupsResponse].
  /// [items] The items (origin groups) in a distribution.
  /// [quantity] The number of origin groups.
  OriginGroupsResponse({
    this.items,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null ? null : pulumi.Input.encodeList<OriginGroupResponse, Map<String, dynamic>>(items!, (value) => value.toMap()),
      'quantity': ?quantity,
    };
  }

  factory OriginGroupsResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupsResponse(
      items: map['items'] == null ? null : pulumi.Input.decodeList<OriginGroupResponse>(map['items'], (value) => OriginGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
      quantity: map['quantity'] == null ? null : map['quantity'] as int,
    );
  }
}

