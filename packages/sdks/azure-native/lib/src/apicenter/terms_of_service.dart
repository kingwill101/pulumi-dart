// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Terms of service for the API.
class TermsOfService {
  /// URL pointing to the terms of service.
  final pulumi.Input<String> url;

  /// Creates a new [TermsOfService].
  /// [url] URL pointing to the terms of service.
  TermsOfService({required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'url': url};
  }

  factory TermsOfService.fromMap(Map<String, dynamic> map) {
    return TermsOfService(url: pulumi.Input.fromValue(map['url'] as String));
  }
}
