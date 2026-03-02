// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_info_response.dart';

/// Result data returned by getEntity.
class GetEntityResult {
  /// Total count of records that match the filter.
  final int? count;
  /// The link to the next page of items
  final String? nextLink;
  /// The EntityInfo items on this page
  final List<EntityInfoResponse> value;

  /// Creates a new [GetEntityResult].
  /// [count] Total count of records that match the filter.
  /// [nextLink] The link to the next page of items
  /// [value] The EntityInfo items on this page
  GetEntityResult({
    this.count,
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<EntityInfoResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GetEntityResult.fromMap(Map<String, dynamic> map) {
    return GetEntityResult(
      count: map['count'] == null ? null : map['count']! as int,
      nextLink: map['nextLink'] == null ? null : map['nextLink']! as String,
      value: pulumi.Input.decodeList<EntityInfoResponse>(map['value'], (value) => EntityInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

