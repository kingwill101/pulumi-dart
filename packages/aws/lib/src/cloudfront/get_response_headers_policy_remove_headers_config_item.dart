// ignore_for_file: unused_element, unnecessary_cast

class GetResponseHeadersPolicyRemoveHeadersConfigItem {
  /// The HTTP header name.
  final String header;

  /// Creates a new [GetResponseHeadersPolicyRemoveHeadersConfigItem].
  /// [header] The HTTP header name.
  GetResponseHeadersPolicyRemoveHeadersConfigItem({
    required this.header,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['header'] = header;
    return map;
  }

  factory GetResponseHeadersPolicyRemoveHeadersConfigItem.fromMap(
      Map<String, dynamic> map) {
    return GetResponseHeadersPolicyRemoveHeadersConfigItem(
      header: map['header'] as String,
    );
  }
}
