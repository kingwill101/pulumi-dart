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
  final List<EntityInfoResponse>? value;

  /// Creates a new [GetEntityResult].
  /// [count] Total count of records that match the filter.
  /// [nextLink] The link to the next page of items
  /// [value] The EntityInfo items on this page
  const GetEntityResult({
    this.count,
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<EntityInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetEntityResult.fromMap(Map<String, dynamic> map) {
    return GetEntityResult(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<EntityInfoResponse>(guardedValue, (value) => EntityInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
