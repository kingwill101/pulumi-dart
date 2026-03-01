// ignore_for_file: unused_element, unnecessary_cast


/// Header of otlp configuration
class HeaderResponse {
  /// The key of otlp configuration header
  final String? key;
  /// The value of otlp configuration header
  final String? value;

  /// Creates a new [HeaderResponse].
  /// [key] The key of otlp configuration header
  /// [value] The value of otlp configuration header
  HeaderResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory HeaderResponse.fromMap(Map<String, dynamic> map) {
    return HeaderResponse(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

