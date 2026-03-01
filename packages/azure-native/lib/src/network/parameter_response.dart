// ignore_for_file: unused_element, unnecessary_cast


/// Parameters for an Action.
class ParameterResponse {
  /// List of AS paths.
  final List<String>? asPath;
  /// List of BGP communities.
  final List<String>? community;
  /// List of route prefixes.
  final List<String>? routePrefix;

  /// Creates a new [ParameterResponse].
  /// [asPath] List of AS paths.
  /// [community] List of BGP communities.
  /// [routePrefix] List of route prefixes.
  ParameterResponse({
    this.asPath,
    this.community,
    this.routePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asPath': ?asPath,
      'community': ?community,
      'routePrefix': ?routePrefix,
    };
  }

  factory ParameterResponse.fromMap(Map<String, dynamic> map) {
    return ParameterResponse(
      asPath: map['asPath'] == null ? null : (map['asPath'] as List).cast<String>(),
      community: map['community'] == null ? null : (map['community'] as List).cast<String>(),
      routePrefix: map['routePrefix'] == null ? null : (map['routePrefix'] as List).cast<String>(),
    );
  }
}

