// ignore_for_file: unused_element, unnecessary_cast


/// Site Reference Properties
class SiteReferenceProperties {
  /// Azure Resource ID for Site
  final String siteId;

  /// Creates a new [SiteReferenceProperties].
  /// [siteId] Azure Resource ID for Site
  SiteReferenceProperties({
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteId': siteId,
    };
  }

  factory SiteReferenceProperties.fromMap(Map<String, dynamic> map) {
    return SiteReferenceProperties(
      siteId: map['siteId'] as String,
    );
  }
}

