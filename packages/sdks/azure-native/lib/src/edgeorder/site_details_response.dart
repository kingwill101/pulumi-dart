// ignore_for_file: unused_element, unnecessary_cast


/// Represents Site Related Details.
class SiteDetailsResponse {
  /// Unique Id, Identifying A Site.
  final String siteId;

  /// Creates a new [SiteDetailsResponse].
  /// [siteId] Unique Id, Identifying A Site.
  SiteDetailsResponse({
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteId': siteId,
    };
  }

  factory SiteDetailsResponse.fromMap(Map<String, dynamic> map) {
    return SiteDetailsResponse(
      siteId: map['siteId'] as String,
    );
  }
}

