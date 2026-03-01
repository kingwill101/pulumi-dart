// ignore_for_file: unused_element, unnecessary_cast


/// Name value pair.
class NameValuePair {
  /// Pair name.
  final String? name;
  /// Pair value.
  final String? value;

  /// Creates a new [NameValuePair].
  /// [name] Pair name.
  /// [value] Pair value.
  NameValuePair({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory NameValuePair.fromMap(Map<String, dynamic> map) {
    return NameValuePair(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

