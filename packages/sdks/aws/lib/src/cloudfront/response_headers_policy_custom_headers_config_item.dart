// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponseHeadersPolicyCustomHeadersConfigItem {
  final pulumi.Input<String> header;
  final pulumi.Input<bool> override;
  /// The value for the HTTP response header.
  final pulumi.Input<String> value;

  /// Creates a new [ResponseHeadersPolicyCustomHeadersConfigItem].
  /// [header] Required.
  /// [override] Required.
  /// [value] The value for the HTTP response header.
  const ResponseHeadersPolicyCustomHeadersConfigItem({
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

  factory ResponseHeadersPolicyCustomHeadersConfigItem.fromMap(Map<String, dynamic> map) {
    return ResponseHeadersPolicyCustomHeadersConfigItem(
      header: pulumi.Input.fromValue(map['header'] as String),
      override: pulumi.Input.fromValue(map['override'] as bool),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
