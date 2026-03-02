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
  ResponseHeadersPolicyCustomHeadersConfigItem({
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
      header: (map['header'] as String).input(),
      override: (map['override'] as bool).input(),
      value: (map['value'] as String).input(),
    );
  }
}

