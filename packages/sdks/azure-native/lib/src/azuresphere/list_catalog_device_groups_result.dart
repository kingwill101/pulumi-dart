// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_group_response.dart';

/// Result data returned by listCatalogDeviceGroups.
class ListCatalogDeviceGroupsResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The DeviceGroup items on this page
  final List<DeviceGroupResponse> value;

  /// Creates a new [ListCatalogDeviceGroupsResult].
  /// [nextLink] The link to the next page of items
  /// [value] The DeviceGroup items on this page
  const ListCatalogDeviceGroupsResult({
    this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': pulumi.Input.encodeList<DeviceGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListCatalogDeviceGroupsResult.fromMap(Map<String, dynamic> map) {
    return ListCatalogDeviceGroupsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: pulumi.Input.decodeList<DeviceGroupResponse>(map['value']!, (value) => DeviceGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

