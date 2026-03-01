// ignore_for_file: unused_element, unnecessary_cast


/// Additional information about every inline event.
class InlineEventProperties {
  /// The dataSchemaUrl for the inline event.
  final String? dataSchemaUrl;
  /// The description for the inline event.
  final String? description;
  /// The displayName for the inline event.
  final String? displayName;
  /// The documentationUrl for the inline event.
  final String? documentationUrl;

  /// Creates a new [InlineEventProperties].
  /// [dataSchemaUrl] The dataSchemaUrl for the inline event.
  /// [description] The description for the inline event.
  /// [displayName] The displayName for the inline event.
  /// [documentationUrl] The documentationUrl for the inline event.
  InlineEventProperties({
    this.dataSchemaUrl,
    this.description,
    this.displayName,
    this.documentationUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSchemaUrl': ?dataSchemaUrl,
      'description': ?description,
      'displayName': ?displayName,
      'documentationUrl': ?documentationUrl,
    };
  }

  factory InlineEventProperties.fromMap(Map<String, dynamic> map) {
    return InlineEventProperties(
      dataSchemaUrl: map['dataSchemaUrl'] == null ? null : map['dataSchemaUrl'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      documentationUrl: map['documentationUrl'] == null ? null : map['documentationUrl'] as String,
    );
  }
}

