// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_response_headers_policy_custom_headers_config_item/get_response_headers_policy_custom_headers_config_item.dart';

class GetResponseHeadersPolicyCustomHeadersConfig {
  final List<GetResponseHeadersPolicyCustomHeadersConfigItem> items;

  GetResponseHeadersPolicyCustomHeadersConfig({
    required this.items,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['items'] = pulumi.Input.encodeList<
        GetResponseHeadersPolicyCustomHeadersConfigItem,
        Map<String, dynamic>>(items, (value) => value.toMap());
    return map;
  }

  factory GetResponseHeadersPolicyCustomHeadersConfig.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCustomHeadersConfig(
      items: pulumi.Input.decodeList<
              GetResponseHeadersPolicyCustomHeadersConfigItem>(
          map['items'],
          (value) => GetResponseHeadersPolicyCustomHeadersConfigItem.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
