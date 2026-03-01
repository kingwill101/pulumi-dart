// ignore_for_file: unused_element, unnecessary_cast


class TlsRouteRuleMatch {
  /// ALPN (Application-Layer Protocol Negotiation) to match against. Examples: "http/1.1", "h2". At least one of sniHost and alpn is required. Up to 5 alpns across all matches can be set.
  final List<String>? alpns;
  /// SNI (server name indicator) to match against. SNI will be matched against all wildcard domains, i.e. www.example.com will be first matched against www.example.com, then *.example.com, then *.com.
  /// Partial wildcards are not supported, and values like *w.example.com are invalid. At least one of sniHost and alpn is required. Up to 5 sni hosts across all matches can be set.
  final List<String>? sniHosts;

  /// Creates a new [TlsRouteRuleMatch].
  /// [alpns] ALPN (Application-Layer Protocol Negotiation) to match against. Examples: "http/1.1", "h2". At least one of sniHost and alpn is required. Up to 5 alpns across all matches can be set.
  /// [sniHosts] SNI (server name indicator) to match against. SNI will be matched against all wildcard domains, i.e. www.example.com will be first matched against www.example.com, then *.example.com, then *.com.
  TlsRouteRuleMatch({
    this.alpns,
    this.sniHosts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpns': ?alpns,
      'sniHosts': ?sniHosts,
    };
  }

  factory TlsRouteRuleMatch.fromMap(Map<String, dynamic> map) {
    return TlsRouteRuleMatch(
      alpns: map['alpns'] == null ? null : (map['alpns'] as List).cast<String>(),
      sniHosts: map['sniHosts'] == null ? null : (map['sniHosts'] as List).cast<String>(),
    );
  }
}

