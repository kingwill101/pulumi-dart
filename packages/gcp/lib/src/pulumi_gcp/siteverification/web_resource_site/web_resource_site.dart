// ignore_for_file: unused_element, unnecessary_cast

class WebResourceSite {
  /// The site identifier. If the type is set to SITE, the identifier is a URL. If the type is
  /// set to INET_DOMAIN, the identifier is a domain name.
  final String identifier;

  /// The type of resource to be verified.
  /// Possible values are: `INET_DOMAIN`, `SITE`.
  final String type;

  WebResourceSite({
    required this.identifier,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identifier'] = identifier;
    map['type'] = type;
    return map;
  }

  factory WebResourceSite.fromMap(Map<String, dynamic> map) {
    return WebResourceSite(
      identifier: map['identifier'] as String,
      type: map['type'] as String,
    );
  }
}
