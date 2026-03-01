// ignore_for_file: unused_element, unnecessary_cast


/// Terms of service for the API.
class TermsOfServiceResponse {
  /// URL pointing to the terms of service.
  final String url;

  /// Creates a new [TermsOfServiceResponse].
  /// [url] URL pointing to the terms of service.
  TermsOfServiceResponse({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory TermsOfServiceResponse.fromMap(Map<String, dynamic> map) {
    return TermsOfServiceResponse(
      url: map['url'] as String,
    );
  }
}

