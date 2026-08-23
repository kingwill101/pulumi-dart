// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Site Reference Properties
class SiteReferencePropertiesResponse {
  /// Provisioning State
  final pulumi.Input<String> provisioningState;
  /// Azure Resource ID for Site
  final pulumi.Input<String> siteId;

  /// Creates a new [SiteReferencePropertiesResponse].
  /// [provisioningState] Provisioning State
  /// [siteId] Azure Resource ID for Site
  const SiteReferencePropertiesResponse({
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
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
    );
  }
}
