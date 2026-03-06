// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Predefined URL category object
class PredefinedUrlCategoryResponse {
  final pulumi.Input<String> action;
  final pulumi.Input<String> name;

  /// Creates a new [PredefinedUrlCategoryResponse].
  /// [action] Required.
  /// [name] Required.
  const PredefinedUrlCategoryResponse({
    required this.action,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'name': name,
    };
  }

  factory PredefinedUrlCategoryResponse.fromMap(Map<String, dynamic> map) {
    return PredefinedUrlCategoryResponse(
      action: pulumi.Input.fromValue(map['action'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

