// ignore_for_file: unused_element, unnecessary_cast


/// Properties of the reference target.
class TargetSelectorPropertiesResponse {
  /// Name of the target.
  final String? name;

  /// Creates a new [TargetSelectorPropertiesResponse].
  /// [name] Name of the target.
  TargetSelectorPropertiesResponse({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory TargetSelectorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TargetSelectorPropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

