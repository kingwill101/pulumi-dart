// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Article details of the insight like title, description etc
class ContentResponse {
  /// Description of the insight
  final pulumi.Input<String> description;
  /// Title of the insight
  final pulumi.Input<String> title;

  /// Creates a new [ContentResponse].
  /// [description] Description of the insight
  /// [title] Title of the insight
  ContentResponse({
    required this.description,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'title': title,
    };
  }

  factory ContentResponse.fromMap(Map<String, dynamic> map) {
    return ContentResponse(
      description: (map['description'] as String).input(),
      title: (map['title'] as String).input(),
    );
  }
}

