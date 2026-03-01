// ignore_for_file: unused_element, unnecessary_cast


/// The RosettaNet ProcessConfiguration business document settings.
class RosettaNetPipBusinessDocumentResponse {
  /// The business document description.
  final String? description;
  /// The business document name.
  final String name;
  /// The business document version.
  final String version;

  /// Creates a new [RosettaNetPipBusinessDocumentResponse].
  /// [description] The business document description.
  /// [name] The business document name.
  /// [version] The business document version.
  RosettaNetPipBusinessDocumentResponse({
    this.description,
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'version': version,
    };
  }

  factory RosettaNetPipBusinessDocumentResponse.fromMap(Map<String, dynamic> map) {
    return RosettaNetPipBusinessDocumentResponse(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      version: map['version'] as String,
    );
  }
}

