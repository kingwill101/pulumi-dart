// ignore_for_file: unused_element, unnecessary_cast


/// Each pivot must contain a 'type' and 'name'.
class PivotProperties {
  /// Data field to show in view.
  final String? name;
  /// Data type to show in view.
  final String? type;

  /// Creates a new [PivotProperties].
  /// [name] Data field to show in view.
  /// [type] Data type to show in view.
  PivotProperties({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory PivotProperties.fromMap(Map<String, dynamic> map) {
    return PivotProperties(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

