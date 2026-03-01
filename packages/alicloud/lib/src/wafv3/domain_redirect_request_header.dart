// ignore_for_file: unused_element, unnecessary_cast


class DomainRedirectRequestHeader {
  /// Specified custom request header fields
  final String? key;
  /// Customize the value of the request header field.
  final String? value;

  /// Creates a new [DomainRedirectRequestHeader].
  /// [key] Specified custom request header fields
  /// [value] Customize the value of the request header field.
  DomainRedirectRequestHeader({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory DomainRedirectRequestHeader.fromMap(Map<String, dynamic> map) {
    return DomainRedirectRequestHeader(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

