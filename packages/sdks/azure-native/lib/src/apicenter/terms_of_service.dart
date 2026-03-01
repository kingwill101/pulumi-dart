// ignore_for_file: unused_element, unnecessary_cast


/// Terms of service for the API.
class TermsOfService {
  /// URL pointing to the terms of service.
  final String url;

  /// Creates a new [TermsOfService].
  /// [url] URL pointing to the terms of service.
  TermsOfService({
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': url,
    };
  }

  factory TermsOfService.fromMap(Map<String, dynamic> map) {
    return TermsOfService(
      url: map['url'] as String,
    );
  }
}

