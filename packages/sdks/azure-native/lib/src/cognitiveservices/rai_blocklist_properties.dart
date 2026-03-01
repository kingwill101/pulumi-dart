// ignore_for_file: unused_element, unnecessary_cast


/// RAI Custom Blocklist properties.
class RaiBlocklistProperties {
  /// Description of the block list.
  final String? description;

  /// Creates a new [RaiBlocklistProperties].
  /// [description] Description of the block list.
  RaiBlocklistProperties({
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
    };
  }

  factory RaiBlocklistProperties.fromMap(Map<String, dynamic> map) {
    return RaiBlocklistProperties(
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

