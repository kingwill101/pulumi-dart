// ignore_for_file: unused_element, unnecessary_cast

class URLMapPathMatcherDefaultRouteActionRequestMirrorPolicy {
  /// The full or partial URL to the BackendService resource being mirrored to.
  final String backendService;

  /// The percentage of requests to be mirrored to backendService.
  /// The value must be between 0.0 and 100.0 inclusive.
  final double? mirrorPercent;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionRequestMirrorPolicy].
  /// [backendService] The full or partial URL to the BackendService resource being mirrored to.
  /// [mirrorPercent] The percentage of requests to be mirrored to backendService.
  URLMapPathMatcherDefaultRouteActionRequestMirrorPolicy({
    required this.backendService,
    this.mirrorPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendService'] = backendService;
    final mirrorPercentValue = mirrorPercent;
    if (mirrorPercentValue != null) {
      map['mirrorPercent'] = mirrorPercentValue;
    }
    return map;
  }

  factory URLMapPathMatcherDefaultRouteActionRequestMirrorPolicy.fromMap(
      Map<String, dynamic> map) {
    return URLMapPathMatcherDefaultRouteActionRequestMirrorPolicy(
      backendService: map['backendService'] as String,
      mirrorPercent:
          map['mirrorPercent'] == null ? null : map['mirrorPercent'] as double,
    );
  }
}
