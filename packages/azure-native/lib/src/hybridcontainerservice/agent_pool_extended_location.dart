// ignore_for_file: unused_element, unnecessary_cast


class AgentPoolExtendedLocation {
  /// The extended location name.
  final String? name;
  /// The extended location type.
  final String? type;

  /// Creates a new [AgentPoolExtendedLocation].
  /// [name] The extended location name.
  /// [type] The extended location type.
  AgentPoolExtendedLocation({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory AgentPoolExtendedLocation.fromMap(Map<String, dynamic> map) {
    return AgentPoolExtendedLocation(
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

