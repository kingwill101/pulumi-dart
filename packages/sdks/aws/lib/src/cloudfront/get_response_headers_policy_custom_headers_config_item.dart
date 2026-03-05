// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponseHeadersPolicyCustomHeadersConfigItem {
  /// The HTTP header name.
  final pulumi.Input<String> header;
  /// Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  final pulumi.Input<bool> override;
  /// Value for the HTTP response header.
  final pulumi.Input<String> value;

  /// Creates a new [GetResponseHeadersPolicyCustomHeadersConfigItem].
  /// [header] The HTTP header name.
  /// [override] Whether CloudFront overrides the X-XSS-Protection HTTP response header received from the origin with the one specified in this response headers policy.
  /// [value] Value for the HTTP response header.
  GetResponseHeadersPolicyCustomHeadersConfigItem({
    required this.header,
    required this.override,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'header': header,
      'override': override,
      'value': value,
    };
  }

  factory GetResponseHeadersPolicyCustomHeadersConfigItem.fromMap(Map<String, dynamic> map) {
    return GetResponseHeadersPolicyCustomHeadersConfigItem(
      header: pulumi.Input.fromValue(map['header'] as String),
      override: pulumi.Input.fromValue(map['override'] as bool),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

