// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../response_headers_policy_remove_headers_config_item/response_headers_policy_remove_headers_config_item.dart';

class ResponseHeadersPolicyRemoveHeadersConfig {
  final List<ResponseHeadersPolicyRemoveHeadersConfigItem>? items;

  ResponseHeadersPolicyRemoveHeadersConfig({
    this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = Input.encodeList<
          ResponseHeadersPolicyRemoveHeadersConfigItem,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ResponseHeadersPolicyRemoveHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicyRemoveHeadersConfig(
      items: map['items'] == null
          ? null
          : Input.decodeList<ResponseHeadersPolicyRemoveHeadersConfigItem>(
              map['items'],
              (value) => ResponseHeadersPolicyRemoveHeadersConfigItem.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
