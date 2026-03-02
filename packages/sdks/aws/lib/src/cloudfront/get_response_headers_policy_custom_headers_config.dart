// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_headers_policy_custom_headers_config_item.dart';

class GetResponseHeadersPolicyCustomHeadersConfig {
  final pulumi.Input<List<GetResponseHeadersPolicyCustomHeadersConfigItem>> items;

  /// Creates a new [GetResponseHeadersPolicyCustomHeadersConfig].
  /// [items] Required.
  GetResponseHeadersPolicyCustomHeadersConfig({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<GetResponseHeadersPolicyCustomHeadersConfigItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GetResponseHeadersPolicyCustomHeadersConfigItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResponseHeadersPolicyCustomHeadersConfig.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCustomHeadersConfig(
      items: (pulumi.Input.decodeList<GetResponseHeadersPolicyCustomHeadersConfigItem>(map['items']!, (value) => GetResponseHeadersPolicyCustomHeadersConfigItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

