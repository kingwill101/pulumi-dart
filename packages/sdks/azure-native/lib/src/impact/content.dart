// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Article details of the insight like title, description etc
class Content {
  /// Description of the insight
  final pulumi.Input<String> description;
  /// Title of the insight
  final pulumi.Input<String> title;

  /// Creates a new [Content].
  /// [description] Description of the insight
  /// [title] Title of the insight
  Content({
    required this.description,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'title': title,
    };
  }

  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      description: pulumi.Input.fromValue(map['description'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
    );
  }
}

