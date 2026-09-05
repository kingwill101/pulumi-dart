// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSites.
class GetSitesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Set of Outposts Site identifiers.
  final List<String>? ids;
  final String? region;

  /// Creates a new [GetSitesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Set of Outposts Site identifiers.
  /// [region] Optional.
  const GetSitesResult({
    this.id,
    this.ids,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'ids': ?ids,
      'region': ?region,
    };
  }

  factory GetSitesResult.fromMap(Map<String, dynamic> map) {
    return GetSitesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
