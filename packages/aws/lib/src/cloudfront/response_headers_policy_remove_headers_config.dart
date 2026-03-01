// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_headers_policy_remove_headers_config_item.dart';

class ResponseHeadersPolicyRemoveHeadersConfig {
  final List<ResponseHeadersPolicyRemoveHeadersConfigItem>? items;

  /// Creates a new [ResponseHeadersPolicyRemoveHeadersConfig].
  /// [items] Optional.
  ResponseHeadersPolicyRemoveHeadersConfig({this.items});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items == null
          ? null
          : pulumi.Input.encodeList<
              ResponseHeadersPolicyRemoveHeadersConfigItem,
              Map<String, dynamic>
            >(items!, (value) => value.toMap()),
    };
  }

  factory ResponseHeadersPolicyRemoveHeadersConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResponseHeadersPolicyRemoveHeadersConfig(
      items: map['items'] == null
          ? null
          : pulumi
                .Input.decodeList<ResponseHeadersPolicyRemoveHeadersConfigItem>(
              map['items'],
              (value) => ResponseHeadersPolicyRemoveHeadersConfigItem.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
