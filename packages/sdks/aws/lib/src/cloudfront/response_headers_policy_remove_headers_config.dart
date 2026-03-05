// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_headers_policy_remove_headers_config_item.dart';

class ResponseHeadersPolicyRemoveHeadersConfig {
  final pulumi.Input<List<ResponseHeadersPolicyRemoveHeadersConfigItem>>? items;

  /// Creates a new [ResponseHeadersPolicyRemoveHeadersConfig].
  /// [items] Optional.
  ResponseHeadersPolicyRemoveHeadersConfig({
    this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?pulumi.Input.mapOptionalInputValue<List<ResponseHeadersPolicyRemoveHeadersConfigItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<ResponseHeadersPolicyRemoveHeadersConfigItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ResponseHeadersPolicyRemoveHeadersConfig.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyRemoveHeadersConfig(
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResponseHeadersPolicyRemoveHeadersConfigItem>(guardedValue, (value) => ResponseHeadersPolicyRemoveHeadersConfigItem.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

