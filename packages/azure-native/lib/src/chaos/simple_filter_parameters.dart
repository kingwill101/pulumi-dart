// ignore_for_file: unused_element, unnecessary_cast


/// Model that represents the Simple filter parameters.
class SimpleFilterParameters {
  /// List of Azure availability zones to filter targets by.
  final List<String>? zones;

  /// Creates a new [SimpleFilterParameters].
  /// [zones] List of Azure availability zones to filter targets by.
  SimpleFilterParameters({
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'zones': ?zones,
    };
  }

  factory SimpleFilterParameters.fromMap(Map<String, dynamic> map) {
    return SimpleFilterParameters(
      zones: map['zones'] == null ? null : (map['zones'] as List).cast<String>(),
    );
  }
}

