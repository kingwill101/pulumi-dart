// ignore_for_file: unused_element, unnecessary_cast


class StandardWebTestRequestHeader {
  /// The name which should be used for a header in the request.
  final String name;
  /// The value which should be used for a header in the request.
  final String value;

  /// Creates a new [StandardWebTestRequestHeader].
  /// [name] The name which should be used for a header in the request.
  /// [value] The value which should be used for a header in the request.
  StandardWebTestRequestHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory StandardWebTestRequestHeader.fromMap(Map<String, dynamic> map) {
    return StandardWebTestRequestHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

