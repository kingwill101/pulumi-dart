// ignore_for_file: unused_element, unnecessary_cast


/// The Database Fleet properties.
class FleetProperties {
  /// Fleet description.
  final String? description;

  /// Creates a new [FleetProperties].
  /// [description] Fleet description.
  FleetProperties({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory FleetProperties.fromMap(Map<String, dynamic> map) {
    return FleetProperties(
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

