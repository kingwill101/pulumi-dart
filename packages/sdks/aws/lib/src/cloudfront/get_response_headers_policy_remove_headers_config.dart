// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_response_headers_policy_remove_headers_config_item.dart';

class GetResponseHeadersPolicyRemoveHeadersConfig {
  final pulumi.Input<List<GetResponseHeadersPolicyRemoveHeadersConfigItem>> items;

  /// Creates a new [GetResponseHeadersPolicyRemoveHeadersConfig].
  /// [items] Required.
  GetResponseHeadersPolicyRemoveHeadersConfig({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': pulumi.Input.mapInputValue<List<GetResponseHeadersPolicyRemoveHeadersConfigItem>, List<Map<String, dynamic>>>(items, (value) => pulumi.Input.encodeList<GetResponseHeadersPolicyRemoveHeadersConfigItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetResponseHeadersPolicyRemoveHeadersConfig.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyRemoveHeadersConfig(
      items: (pulumi.Input.decodeList<GetResponseHeadersPolicyRemoveHeadersConfigItem>(map['items']!, (value) => GetResponseHeadersPolicyRemoveHeadersConfigItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

