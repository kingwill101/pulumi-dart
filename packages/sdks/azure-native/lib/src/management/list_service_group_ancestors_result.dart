// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_group_response.dart';

/// Result data returned by listServiceGroupAncestors.
class ListServiceGroupAncestorsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The ServiceGroup items on this page
  final List<ServiceGroupResponse> value;

  /// Creates a new [ListServiceGroupAncestorsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The ServiceGroup items on this page
  const ListServiceGroupAncestorsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<ServiceGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListServiceGroupAncestorsResult.fromMap(Map<String, dynamic> map) {
    return ListServiceGroupAncestorsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: pulumi.Input.decodeList<ServiceGroupResponse>(map['value']!, (value) => ServiceGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
