// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_response.dart';

/// Result data returned by listServiceGroupAncestors.
class ListServiceGroupAncestorsResult {
  /// URL to query the next page of results for this request
  final String? nextLink;
  /// Array of service groups based on the request criteria
  final List<ServiceGroupResponse>? value;

  /// Creates a new [ListServiceGroupAncestorsResult].
  /// [nextLink] URL to query the next page of results for this request
  /// [value] Array of service groups based on the request criteria
  ListServiceGroupAncestorsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<ServiceGroupResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListServiceGroupAncestorsResult.fromMap(Map<String, dynamic> map) {
    return ListServiceGroupAncestorsResult(
      nextLink: map['nextLink'] == null ? null : map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ServiceGroupResponse>(map['value'], (value) => ServiceGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

