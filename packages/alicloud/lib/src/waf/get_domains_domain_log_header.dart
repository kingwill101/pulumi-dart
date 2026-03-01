// ignore_for_file: unused_element, unnecessary_cast


class GetDomainsDomainLogHeader {
  /// The key of label.
  final String key;
  /// The value of label.
  final String value;

  /// Creates a new [GetDomainsDomainLogHeader].
  /// [key] The key of label.
  /// [value] The value of label.
  GetDomainsDomainLogHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetDomainsDomainLogHeader.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainLogHeader(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

