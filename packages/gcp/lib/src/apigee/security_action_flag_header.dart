// ignore_for_file: unused_element, unnecessary_cast


class SecurityActionFlagHeader {
  /// The header name to be sent to the target.
  final String? name;
  /// The header value to be sent to the target.
  final String? value;

  /// Creates a new [SecurityActionFlagHeader].
  /// [name] The header name to be sent to the target.
  /// [value] The header value to be sent to the target.
  SecurityActionFlagHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory SecurityActionFlagHeader.fromMap(Map<String, dynamic> map) {
    return SecurityActionFlagHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

