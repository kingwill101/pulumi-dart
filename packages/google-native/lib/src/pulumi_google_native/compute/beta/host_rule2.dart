// ignore_for_file: unused_element, unnecessary_cast

/// UrlMaps A host-matching rule for a URL. If matched, will use the named PathMatcher to select the BackendService.
class HostRule2 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;

  /// The list of host patterns to match. They must be valid hostnames with optional port numbers in the format host:port. * matches any string of ([a-z0-9-.]*). In that case, * must be the first character, and if followed by anything, the immediate following character must be either - or .. * based matching is not supported when the URL map is bound to a target gRPC proxy that has the validateForProxyless field set to true.
  final List<String>? hosts;

  /// The name of the PathMatcher to use to match the path portion of the URL if the hostRule matches the URL's host portion.
  final String? pathMatcher;

  HostRule2({
    this.description,
    this.hosts,
    this.pathMatcher,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final hostsValue = hosts;
    if (hostsValue != null) {
      map['hosts'] = hostsValue;
    }
    final pathMatcherValue = pathMatcher;
    if (pathMatcherValue != null) {
      map['pathMatcher'] = pathMatcherValue;
    }
    return map;
  }

  factory HostRule2.fromMap(Map<String, dynamic> map) {
    return HostRule2(
      description:
          map['description'] == null ? null : map['description'] as String,
      hosts:
          map['hosts'] == null ? null : (map['hosts'] as List).cast<String>(),
      pathMatcher:
          map['pathMatcher'] == null ? null : map['pathMatcher'] as String,
    );
  }
}
