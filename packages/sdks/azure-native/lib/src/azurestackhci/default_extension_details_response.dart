// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties for a particular default extension category.
class DefaultExtensionDetailsResponse {
  /// Default extension category
  final pulumi.Input<String> category;
  /// Consent time for extension category
  final pulumi.Input<String> consentTime;

  /// Creates a new [DefaultExtensionDetailsResponse].
  /// [category] Default extension category
  /// [consentTime] Consent time for extension category
  const DefaultExtensionDetailsResponse({
    required this.category,
    required this.consentTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'consentTime': consentTime,
    };
  }

  factory DefaultExtensionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return DefaultExtensionDetailsResponse(
      category: pulumi.Input.fromValue(map['category'] as String),
      consentTime: pulumi.Input.fromValue(map['consentTime'] as String),
    );
  }
}

