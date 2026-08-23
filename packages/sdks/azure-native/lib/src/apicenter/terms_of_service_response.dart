// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Terms of service for the API.
class TermsOfServiceResponse {
  /// URL pointing to the terms of service.
  final pulumi.Input<String> url;

  /// Creates a new [TermsOfServiceResponse].
  /// [url] URL pointing to the terms of service.
  const TermsOfServiceResponse({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory TermsOfServiceResponse.fromMap(Map<String, dynamic> map) {
    return TermsOfServiceResponse(
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
