// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The API resource policies.
class ApiResourcePoliciesResponse {
  /// The API level only policies XML as embedded content.
  final pulumi.Input<String>? content;
  /// The content link to the policies.
  final pulumi.Input<String>? contentLink;

  /// Creates a new [ApiResourcePoliciesResponse].
  /// [content] The API level only policies XML as embedded content.
  /// [contentLink] The content link to the policies.
  ApiResourcePoliciesResponse({
    this.content,
    this.contentLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'contentLink': ?contentLink,
    };
  }

  factory ApiResourcePoliciesResponse.fromMap(Map<String, dynamic> map) {
    return ApiResourcePoliciesResponse(
      content: map['content'] == null ? null : (map['content']! as String).input(),
      contentLink: map['contentLink'] == null ? null : (map['contentLink']! as String).input(),
    );
  }
}

