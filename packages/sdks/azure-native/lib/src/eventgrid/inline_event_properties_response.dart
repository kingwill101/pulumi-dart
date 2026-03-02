// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information about every inline event.
class InlineEventPropertiesResponse {
  /// The dataSchemaUrl for the inline event.
  final pulumi.Input<String>? dataSchemaUrl;
  /// The description for the inline event.
  final pulumi.Input<String>? description;
  /// The displayName for the inline event.
  final pulumi.Input<String>? displayName;
  /// The documentationUrl for the inline event.
  final pulumi.Input<String>? documentationUrl;

  /// Creates a new [InlineEventPropertiesResponse].
  /// [dataSchemaUrl] The dataSchemaUrl for the inline event.
  /// [description] The description for the inline event.
  /// [displayName] The displayName for the inline event.
  /// [documentationUrl] The documentationUrl for the inline event.
  InlineEventPropertiesResponse({
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

  factory InlineEventPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InlineEventPropertiesResponse(
      dataSchemaUrl: map['dataSchemaUrl'] == null ? null : (map['dataSchemaUrl']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      documentationUrl: map['documentationUrl'] == null ? null : (map['documentationUrl']! as String).input(),
    );
  }
}

