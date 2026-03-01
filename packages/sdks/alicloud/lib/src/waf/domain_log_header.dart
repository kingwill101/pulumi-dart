// ignore_for_file: unused_element, unnecessary_cast


class DomainLogHeader {
  final String? key;
  final String? value;

  /// Creates a new [DomainLogHeader].
  /// [key] Optional.
  /// [value] Optional.
  DomainLogHeader({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory DomainLogHeader.fromMap(Map<String, dynamic> map) {
    return DomainLogHeader(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

