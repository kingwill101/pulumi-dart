// ignore_for_file: unused_element, unnecessary_cast


/// Dapr component metadata.
class DaprServiceBindMetadata {
  /// Service bind metadata property name.
  final String? name;
  /// Service bind metadata property value.
  final String? value;

  /// Creates a new [DaprServiceBindMetadata].
  /// [name] Service bind metadata property name.
  /// [value] Service bind metadata property value.
  DaprServiceBindMetadata({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DaprServiceBindMetadata.fromMap(Map<String, dynamic> map) {
    return DaprServiceBindMetadata(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

