// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A WebLinkedService that uses anonymous authentication to communicate with an HTTP endpoint.
class WebAnonymousAuthentication {
  /// Type of authentication used to connect to the web table source.
  /// Expected value is 'Anonymous'.
  final pulumi.Input<String> authenticationType;
  /// The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;

  /// Creates a new [WebAnonymousAuthentication].
  /// [authenticationType] Type of authentication used to connect to the web table source.
  /// [url] The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  const WebAnonymousAuthentication({
    required this.authenticationType,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'url': url,
    };
  }

  factory WebAnonymousAuthentication.fromMap(Map<String, dynamic> map) {
    return WebAnonymousAuthentication(
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      url: pulumi.Input.fromValue(map['url']),
    );
  }
}
