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
  ListServiceGroupAncestorsResult({this.nextLink, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          ServiceGroupResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory ListServiceGroupAncestorsResult.fromMap(Map<String, dynamic> map) {
    return ListServiceGroupAncestorsResult(
      nextLink: (() {
        final guardedValue = map['nextLink'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<ServiceGroupResponse>(
          guardedValue,
          (value) => ServiceGroupResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
