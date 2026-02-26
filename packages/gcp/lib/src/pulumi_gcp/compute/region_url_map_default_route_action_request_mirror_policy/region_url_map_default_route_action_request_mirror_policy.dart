// ignore_for_file: unused_element, unnecessary_cast

class RegionUrlMapDefaultRouteActionRequestMirrorPolicy {
  /// The full or partial URL to the RegionBackendService resource being mirrored to.
  /// The backend service configured for a mirroring policy must reference backends that are of the same type as the original backend service matched in the URL map.
  /// Serverless NEG backends are not currently supported as a mirrored backend service.
  final String? backendService;

  /// The percentage of requests to be mirrored to backendService.
  /// The value must be between 0.0 and 100.0 inclusive.
  final double? mirrorPercent;

  RegionUrlMapDefaultRouteActionRequestMirrorPolicy({
    this.backendService,
    this.mirrorPercent,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backendServiceValue = backendService;
    if (backendServiceValue != null) {
      map['backendService'] = backendServiceValue;
    }
    final mirrorPercentValue = mirrorPercent;
    if (mirrorPercentValue != null) {
      map['mirrorPercent'] = mirrorPercentValue;
    }
    return map;
  }

  factory RegionUrlMapDefaultRouteActionRequestMirrorPolicy.fromMap(
      Map<String, dynamic> map) {
    return RegionUrlMapDefaultRouteActionRequestMirrorPolicy(
      backendService: map['backendService'] == null
          ? null
          : map['backendService'] as String,
      mirrorPercent:
          map['mirrorPercent'] == null ? null : map['mirrorPercent'] as double,
    );
  }
}
