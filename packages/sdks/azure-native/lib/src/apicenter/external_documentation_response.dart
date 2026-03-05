// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional, external documentation for the API.
class ExternalDocumentationResponse {
  /// Description of the documentation.
  final pulumi.Input<String>? description;
  /// Title of the documentation.
  final pulumi.Input<String>? title;
  /// URL pointing to the documentation.
  final pulumi.Input<String> url;

  /// Creates a new [ExternalDocumentationResponse].
  /// [description] Description of the documentation.
  /// [title] Title of the documentation.
  /// [url] URL pointing to the documentation.
  ExternalDocumentationResponse({
    this.description,
    this.title,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'title': ?title,
      'url': url,
    };
  }

  factory ExternalDocumentationResponse.fromMap(Map<String, dynamic> map) {
    return ExternalDocumentationResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: (() { final guardedValue = map['title']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

