// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_response.dart';

/// Result data returned by listCatalogDevices.
class ListCatalogDevicesResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The Device items on this page
  final List<DeviceResponse>? value;

  /// Creates a new [ListCatalogDevicesResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Device items on this page
  const ListCatalogDevicesResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DeviceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListCatalogDevicesResult.fromMap(Map<String, dynamic> map) {
    return ListCatalogDevicesResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DeviceResponse>(guardedValue, (value) => DeviceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
