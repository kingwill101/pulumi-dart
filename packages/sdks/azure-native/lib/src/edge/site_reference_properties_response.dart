// ignore_for_file: unused_element, unnecessary_cast


/// Site Reference Properties
class SiteReferencePropertiesResponse {
  /// Provisioning State
  final String provisioningState;
  /// Azure Resource ID for Site
  final String siteId;

  /// Creates a new [SiteReferencePropertiesResponse].
  /// [provisioningState] Provisioning State
  /// [siteId] Azure Resource ID for Site
  SiteReferencePropertiesResponse({
    required this.provisioningState,
    required this.siteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'siteId': siteId,
    };
  }

  factory SiteReferencePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SiteReferencePropertiesResponse(
      provisioningState: map['provisioningState'] as String,
      siteId: map['siteId'] as String,
    );
  }
}

