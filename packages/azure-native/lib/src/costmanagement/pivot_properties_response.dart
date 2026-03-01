// ignore_for_file: unused_element, unnecessary_cast


/// Each pivot must contain a 'type' and 'name'.
class PivotPropertiesResponse {
  /// Data field to show in view.
  final String? name;
  /// Data type to show in view.
  final String? type;

  /// Creates a new [PivotPropertiesResponse].
  /// [name] Data field to show in view.
  /// [type] Data type to show in view.
  PivotPropertiesResponse({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory PivotPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PivotPropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

