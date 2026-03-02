// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_headers_policy_custom_headers_config_item.dart';

class ResponseHeadersPolicyCustomHeadersConfig {
  final pulumi.Input<List<ResponseHeadersPolicyCustomHeadersConfigItem>>? items;

  /// Creates a new [ResponseHeadersPolicyCustomHeadersConfig].
  /// [items] Optional.
  ResponseHeadersPolicyCustomHeadersConfig({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<ResponseHeadersPolicyCustomHeadersConfigItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ResponseHeadersPolicyCustomHeadersConfigItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResponseHeadersPolicyCustomHeadersConfig.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyCustomHeadersConfig(
      items: map['items'] == null ? null : (pulumi.Input.decodeList<ResponseHeadersPolicyCustomHeadersConfigItem>(map['items'], (value) => ResponseHeadersPolicyCustomHeadersConfigItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

