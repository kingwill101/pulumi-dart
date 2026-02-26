// ignore_for_file: unused_element, unnecessary_cast

/// Defines the behavior of a domain-level redirect. Domain redirects preserve the path of the redirect but replace the requested domain with the one specified in the redirect configuration.
class DomainRedirectResponse {
  /// The domain name to redirect to.
  final String domainName;

  /// The redirect status code.
  final String type;

  DomainRedirectResponse({
    required this.domainName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainName'] = domainName;
    map['type'] = type;
    return map;
  }

  factory DomainRedirectResponse.fromMap(Map<String, dynamic> map) {
    return DomainRedirectResponse(
      domainName: map['domainName'] as String,
      type: map['type'] as String,
    );
  }
}
