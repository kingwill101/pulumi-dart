// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSites.
class GetSitesResult2 {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of Outposts Site identifiers.
  final List<String> ids;
  final String region;

  GetSitesResult2({
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

  factory GetSitesResult2.fromMap(Map<String, dynamic> map) {
    return GetSitesResult2(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
