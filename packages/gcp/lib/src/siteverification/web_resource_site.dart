// ignore_for_file: unused_element, unnecessary_cast

class WebResourceSite {
  /// The site identifier. If the type is set to SITE, the identifier is a URL. If the type is
  /// set to INET_DOMAIN, the identifier is a domain name.
  final String identifier;

  /// The type of resource to be verified.
  /// Possible values are: `INET_DOMAIN`, `SITE`.
  final String type;

  /// Creates a new [WebResourceSite].
  /// [identifier] The site identifier. If the type is set to SITE, the identifier is a URL. If the type is
  /// [type] The type of resource to be verified.
  WebResourceSite({required this.identifier, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identifier': identifier, 'type': type};
  }

  factory WebResourceSite.fromMap(Map<String, dynamic> map) {
    return WebResourceSite(
      identifier: map['identifier'] as String,
      type: map['type'] as String,
    );
  }
}
