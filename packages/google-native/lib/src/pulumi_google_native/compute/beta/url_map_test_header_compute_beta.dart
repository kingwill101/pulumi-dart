// ignore_for_file: unused_element, unnecessary_cast

/// HTTP headers used in UrlMapTests.
class UrlMapTestHeaderComputeBeta {
  /// Header name.
  final String? name;

  /// Header value.
  final String? value;

  UrlMapTestHeaderComputeBeta({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory UrlMapTestHeaderComputeBeta.fromMap(Map<String, dynamic> map) {
    return UrlMapTestHeaderComputeBeta(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
