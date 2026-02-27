// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSites.
class GetSitesOutpostsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of Outposts Site identifiers.
  final List<String> ids;
  final String region;

  GetSitesOutpostsResult({
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['ids'] = ids;
    map['region'] = region;
    return map;
  }

  factory GetSitesOutpostsResult.fromMap(Map<String, dynamic> map) {
    return GetSitesOutpostsResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
