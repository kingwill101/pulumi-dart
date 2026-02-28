// ignore_for_file: unused_element, unnecessary_cast

class AppHostingDomainServeRedirect {
  /// The status code to use in a redirect response. Must be a valid HTTP 3XX
  /// status code. Defaults to 302 if not present.
  final String? status;

  /// The URI of the redirect's intended destination. This URI will be
  /// prepended to the original request path. URI without a scheme are
  /// assumed to be HTTPS.
  final String uri;

  /// Creates a new [AppHostingDomainServeRedirect].
  /// [status] The status code to use in a redirect response. Must be a valid HTTP 3XX
  /// [uri] The URI of the redirect's intended destination. This URI will be
  AppHostingDomainServeRedirect({
    this.status,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    map['uri'] = uri;
    return map;
  }

  factory AppHostingDomainServeRedirect.fromMap(Map<String, dynamic> map) {
    return AppHostingDomainServeRedirect(
      status: map['status'] == null ? null : map['status'] as String,
      uri: map['uri'] as String,
    );
  }
}
