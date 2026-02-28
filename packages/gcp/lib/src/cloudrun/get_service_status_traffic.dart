// ignore_for_file: unused_element, unnecessary_cast

class GetServiceStatusTraffic {
  /// LatestRevision may be optionally provided to indicate that the latest ready
  /// Revision of the Configuration should be used for this traffic target. When
  /// provided LatestRevision must be true if RevisionName is empty; it must be
  /// false when RevisionName is non-empty.
  final bool latestRevision;

  /// Percent specifies percent of the traffic to this Revision or Configuration.
  final int percent;

  /// RevisionName of a specific revision to which to send this portion of traffic.
  final String revisionName;

  /// Tag is optionally used to expose a dedicated url for referencing this target exclusively.
  final String tag;

  /// URL displays the URL for accessing tagged traffic targets. URL is displayed in status,
  /// and is disallowed on spec. URL must contain a scheme (e.g. http://) and a hostname,
  /// but may not contain anything else (e.g. basic auth, url path, etc.)
  final String url;

  /// Creates a new [GetServiceStatusTraffic].
  /// [latestRevision] LatestRevision may be optionally provided to indicate that the latest ready
  /// [percent] Percent specifies percent of the traffic to this Revision or Configuration.
  /// [revisionName] RevisionName of a specific revision to which to send this portion of traffic.
  /// [tag] Tag is optionally used to expose a dedicated url for referencing this target exclusively.
  /// [url] URL displays the URL for accessing tagged traffic targets. URL is displayed in status,
  GetServiceStatusTraffic({
    required this.latestRevision,
    required this.percent,
    required this.revisionName,
    required this.tag,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latestRevision'] = latestRevision;
    map['percent'] = percent;
    map['revisionName'] = revisionName;
    map['tag'] = tag;
    map['url'] = url;
    return map;
  }

  factory GetServiceStatusTraffic.fromMap(Map<String, dynamic> map) {
    return GetServiceStatusTraffic(
      latestRevision: map['latestRevision'] as bool,
      percent: map['percent'] as int,
      revisionName: map['revisionName'] as String,
      tag: map['tag'] as String,
      url: map['url'] as String,
    );
  }
}
