// ignore_for_file: unused_element, unnecessary_cast


class DomainRegistrantContactExtraParam {
  /// The name of an additional parameter that is required by a top-level domain.
  final String name;
  /// The value that corresponds with the name of an extra parameter.
  final String value;

  /// Creates a new [DomainRegistrantContactExtraParam].
  /// [name] The name of an additional parameter that is required by a top-level domain.
  /// [value] The value that corresponds with the name of an extra parameter.
  DomainRegistrantContactExtraParam({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory DomainRegistrantContactExtraParam.fromMap(Map<String, dynamic> map) {
    return DomainRegistrantContactExtraParam(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

