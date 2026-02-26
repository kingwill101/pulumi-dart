// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_response_headers_policy_remove_headers_config_item/get_response_headers_policy_remove_headers_config_item.dart';

class GetResponseHeadersPolicyRemoveHeadersConfig {
  final List<GetResponseHeadersPolicyRemoveHeadersConfigItem> items;

  GetResponseHeadersPolicyRemoveHeadersConfig({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = Input.encodeList<
        GetResponseHeadersPolicyRemoveHeadersConfigItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    return map;
  }

  factory GetResponseHeadersPolicyRemoveHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyRemoveHeadersConfig(
      items: Input.decodeList<GetResponseHeadersPolicyRemoveHeadersConfigItem>(
          map['items'],
          (value) => GetResponseHeadersPolicyRemoveHeadersConfigItem.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
