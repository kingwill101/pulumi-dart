// ignore_for_file: unused_element, unnecessary_cast


/// Secret definition.
class SessionPoolSecret {
  /// Secret Name.
  final String? name;
  /// Secret Value.
  final String? value;

  /// Creates a new [SessionPoolSecret].
  /// [name] Secret Name.
  /// [value] Secret Value.
  SessionPoolSecret({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory SessionPoolSecret.fromMap(Map<String, dynamic> map) {
    return SessionPoolSecret(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

