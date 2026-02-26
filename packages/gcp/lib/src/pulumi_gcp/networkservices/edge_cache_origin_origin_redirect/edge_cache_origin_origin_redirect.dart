// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheOriginOriginRedirect {
  /// The set of redirect response codes that the CDN
  /// follows. Values of
  /// [RedirectConditions](https://cloud.google.com/media-cdn/docs/reference/rest/v1/projects.locations.edgeCacheOrigins#redirectconditions)
  /// are accepted.
  final List<String>? redirectConditions;

  EdgeCacheOriginOriginRedirect({
    this.redirectConditions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final redirectConditionsValue = redirectConditions;
    if (redirectConditionsValue != null) {
      map['redirectConditions'] = redirectConditionsValue;
    }
    return map;
  }

  factory EdgeCacheOriginOriginRedirect.fromMap(Map<String, dynamic> map) {
    return EdgeCacheOriginOriginRedirect(
      redirectConditions: map['redirectConditions'] == null
          ? null
          : (map['redirectConditions'] as List).cast<String>(),
    );
  }
}
