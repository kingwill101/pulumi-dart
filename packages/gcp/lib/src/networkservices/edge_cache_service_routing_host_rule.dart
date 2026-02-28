// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheServiceRoutingHostRule {
  /// A human-readable description of the hostRule.
  final String? description;

  /// The list of host patterns to match.
  /// Host patterns must be valid hostnames. Ports are not allowed. Wildcard hosts are supported in the suffix or prefix form. * matches any string of ([a-z0-9-.]*). It does not match the empty string.
  /// When multiple hosts are specified, hosts are matched in the following priority:
  /// 1. Exact domain names: ``www.foo.com``.
  /// 2. Suffix domain wildcards: ``*.foo.com`` or ``*-bar.foo.com``.
  /// 3. Prefix domain wildcards: ``foo.*`` or ``foo-*``.
  /// 4. Special wildcard ``*`` matching any domain.
  /// Notes:
  /// The wildcard will not match the empty string. e.g. ``*-bar.foo.com`` will match ``baz-bar.foo.com`` but not ``-bar.foo.com``. The longest wildcards match first. Only a single host in the entire service can match on ``*``. A domain must be unique across all configured hosts within a service.
  /// Hosts are matched against the HTTP Host header, or for HTTP/2 and HTTP/3, the ":authority" header, from the incoming request.
  /// You may specify up to 10 hosts.
  final List<String> hosts;

  /// The name of the pathMatcher associated with this hostRule.
  final String pathMatcher;

  /// Creates a new [EdgeCacheServiceRoutingHostRule].
  /// [description] A human-readable description of the hostRule.
  /// [hosts] The list of host patterns to match.
  /// [pathMatcher] The name of the pathMatcher associated with this hostRule.
  EdgeCacheServiceRoutingHostRule({
    this.description,
    required this.hosts,
    required this.pathMatcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['hosts'] = hosts;
    map['pathMatcher'] = pathMatcher;
    return map;
  }

  factory EdgeCacheServiceRoutingHostRule.fromMap(Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingHostRule(
      description:
          map['description'] == null ? null : map['description'] as String,
      hosts: (map['hosts'] as List).cast<String>(),
      pathMatcher: map['pathMatcher'] as String,
    );
  }
}
