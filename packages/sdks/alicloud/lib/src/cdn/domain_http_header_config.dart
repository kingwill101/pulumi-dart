// ignore_for_file: unused_element, unnecessary_cast


class DomainHttpHeaderConfig {
  final String? headerId;
  final String headerKey;
  final String headerValue;

  /// Creates a new [DomainHttpHeaderConfig].
  /// [headerId] Optional.
  /// [headerKey] Required.
  /// [headerValue] Required.
  DomainHttpHeaderConfig({
    this.headerId,
    required this.headerKey,
    required this.headerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerId': ?headerId,
      'headerKey': headerKey,
      'headerValue': headerValue,
    };
  }

  factory DomainHttpHeaderConfig.fromMap(Map<String, dynamic> map) {
    return DomainHttpHeaderConfig(
      headerId: map['headerId'] == null ? null : map['headerId'] as String,
      headerKey: map['headerKey'] as String,
      headerValue: map['headerValue'] as String,
    );
  }
}

