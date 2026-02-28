// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicyCustomHeadersConfigItem {
  final String header;
  final bool override;

  /// The value for the HTTP response header.
  final String value;

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
    final map = <String, dynamic>{};
    map['header'] = header;
    map['override'] = override;
    map['value'] = value;
    return map;
  }

  factory ResponseHeadersPolicyCustomHeadersConfigItem.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicyCustomHeadersConfigItem(
      header: map['header'] as String,
      override: map['override'] as bool,
      value: map['value'] as String,
    );
  }
}
