// ignore_for_file: unused_element, unnecessary_cast

class ResponseHeadersPolicyRemoveHeadersConfigItem {
  final String header;

  /// Creates a new [ResponseHeadersPolicyRemoveHeadersConfigItem].
  /// [header] Required.
  ResponseHeadersPolicyRemoveHeadersConfigItem({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header;
    return map;
  }

  factory ResponseHeadersPolicyRemoveHeadersConfigItem.fromMap(
      Map<String, dynamic> map) {
    return ResponseHeadersPolicyRemoveHeadersConfigItem(
      header: map['header'] as String,
    );
  }
}
