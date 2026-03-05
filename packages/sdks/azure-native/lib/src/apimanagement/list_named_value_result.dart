// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listNamedValue.
class ListNamedValueResult {
  /// This is secret value of the NamedValue entity.
  final String? value;

  /// Creates a new [ListNamedValueResult].
  /// [value] This is secret value of the NamedValue entity.
  ListNamedValueResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory ListNamedValueResult.fromMap(Map<String, dynamic> map) {
    return ListNamedValueResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

