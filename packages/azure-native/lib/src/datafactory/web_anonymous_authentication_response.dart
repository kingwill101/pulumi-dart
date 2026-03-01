// ignore_for_file: unused_element, unnecessary_cast


/// A WebLinkedService that uses anonymous authentication to communicate with an HTTP endpoint.
class WebAnonymousAuthenticationResponse {
  /// Type of authentication used to connect to the web table source.
  /// Expected value is 'Anonymous'.
  final String authenticationType;
  /// The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  final dynamic url;

  /// Creates a new [WebAnonymousAuthenticationResponse].
  /// [authenticationType] Type of authentication used to connect to the web table source.
  /// [url] The URL of the web service endpoint, e.g. https://www.microsoft.com . Type: string (or Expression with resultType string).
  WebAnonymousAuthenticationResponse({
    required this.authenticationType,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': authenticationType,
      'url': url,
    };
  }

  factory WebAnonymousAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return WebAnonymousAuthenticationResponse(
      authenticationType: map['authenticationType'] as String,
      url: map['url'],
    );
  }
}

