// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSites.
class GetSitesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Set of Outposts Site identifiers.
  final List<String> ids;
  final String region;

  /// Creates a new [GetSitesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of Outposts Site identifiers.
  /// [region] Required.
  GetSitesResult({
    required this.id,
    required this.ids,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'region': region,
    };
  }

  factory GetSitesResult.fromMap(Map<String, dynamic> map) {
    return GetSitesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}

