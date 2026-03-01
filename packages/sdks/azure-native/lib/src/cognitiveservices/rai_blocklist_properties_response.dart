// ignore_for_file: unused_element, unnecessary_cast


/// RAI Custom Blocklist properties.
class RaiBlocklistPropertiesResponse {
  /// Description of the block list.
  final String? description;

  /// Creates a new [RaiBlocklistPropertiesResponse].
  /// [description] Description of the block list.
  RaiBlocklistPropertiesResponse({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory RaiBlocklistPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistPropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

