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
      dataSchemaUrl: (() {
        final guardedValue = map['dataSchemaUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      documentationUrl: (() {
        final guardedValue = map['documentationUrl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
