// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_center_sku_response.dart';

/// Result data returned by listSkusByProject.
class ListSkusByProjectResult {
  /// URL to get the next set of results if there are any.
  final String? nextLink;
  /// Current page of results.
  final List<DevCenterSkuResponse>? value;

  /// Creates a new [ListSkusByProjectResult].
  /// [nextLink] URL to get the next set of results if there are any.
  /// [value] Current page of results.
  const ListSkusByProjectResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<DevCenterSkuResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListSkusByProjectResult.fromMap(Map<String, dynamic> map) {
    return ListSkusByProjectResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DevCenterSkuResponse>(guardedValue, (value) => DevCenterSkuResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
