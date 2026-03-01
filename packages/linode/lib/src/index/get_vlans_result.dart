// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vlans_filter.dart';
import 'get_vlans_vlan.dart';

/// Result data returned by getVlans.
class GetVlansResult {
  final List<GetVlansFilter>? filters;
  final String id;
  final String? order;
  final String? orderBy;
  final List<GetVlansVlan> vlans;

  /// Creates a new [GetVlansResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [order] Optional.
  /// [orderBy] Optional.
  /// [vlans] Required.
  GetVlansResult({
    this.filters,
    required this.id,
    this.order,
    this.orderBy,
    required this.vlans,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVlansFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'order': ?order,
      'orderBy': ?orderBy,
      'vlans': pulumi.Input.encodeList<GetVlansVlan, Map<String, dynamic>>(vlans, (value) => value.toMap()),
    };
  }

  factory GetVlansResult.fromMap(Map<String, dynamic> map) {
    return GetVlansResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVlansFilter>(map['filters'], (value) => GetVlansFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      order: map['order'] == null ? null : map['order'] as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy'] as String,
      vlans: pulumi.Input.decodeList<GetVlansVlan>(map['vlans'], (value) => GetVlansVlan.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

