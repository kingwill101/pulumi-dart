// ignore_for_file: unused_element, unnecessary_cast

/// UrlMaps A host-matching rule for a URL. If matched, will use the named PathMatcher to select the BackendService.
class HostRuleResponse2 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// The list of host patterns to match. They must be valid hostnames with optional port numbers in the format host:port. * matches any string of ([a-z0-9-.]*). In that case, * must be the first character, and if followed by anything, the immediate following character must be either - or .. * based matching is not supported when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final List<String> hosts;

  /// The name of the PathMatcher to use to match the path portion of the URL if the hostRule matches the URL's host portion.
  final String pathMatcher;

  HostRuleResponse2({
    required this.description,
    required this.hosts,
    required this.pathMatcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['hosts'] = hosts;
    map['pathMatcher'] = pathMatcher;
    return map;
  }

  factory HostRuleResponse2.fromMap(Map<String, dynamic> map) {
    return HostRuleResponse2(
      description: map['description'] as String,
      hosts: (map['hosts'] as List).cast<String>(),
      pathMatcher: map['pathMatcher'] as String,
    );
  }
}
