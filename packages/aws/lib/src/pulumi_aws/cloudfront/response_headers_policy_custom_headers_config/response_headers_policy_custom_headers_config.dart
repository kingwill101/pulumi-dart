// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../response_headers_policy_custom_headers_config_item/response_headers_policy_custom_headers_config_item.dart';

class ResponseHeadersPolicyCustomHeadersConfig {
  final List<ResponseHeadersPolicyCustomHeadersConfigItem>? items;

  ResponseHeadersPolicyCustomHeadersConfig({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = Input.encodeList<
          ResponseHeadersPolicyCustomHeadersConfigItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResponseHeadersPolicyCustomHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicyCustomHeadersConfig(
      items: map['items'] == null
          ? null
          : Input.decodeList<ResponseHeadersPolicyCustomHeadersConfigItem>(
              map['items'],
              (value) => ResponseHeadersPolicyCustomHeadersConfigItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
