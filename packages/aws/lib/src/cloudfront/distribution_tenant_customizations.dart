// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_tenant_customizations_certificate.dart';
import 'distribution_tenant_customizations_geo_restriction.dart';
import 'distribution_tenant_customizations_web_acl.dart';

class DistributionTenantCustomizations {
  /// Certificate configuration for the tenant (maximum one).
  final DistributionTenantCustomizationsCertificate? certificate;

  /// Geographic restrictions configuration for the tenant (maximum one).
  final DistributionTenantCustomizationsGeoRestriction? geoRestriction;

  /// Web ACL configuration for the tenant (maximum one).
  final DistributionTenantCustomizationsWebAcl? webAcl;

  /// Creates a new [DistributionTenantCustomizations].
  /// [certificate] Certificate configuration for the tenant (maximum one).
  /// [geoRestriction] Geographic restrictions configuration for the tenant (maximum one).
  /// [webAcl] Web ACL configuration for the tenant (maximum one).
  DistributionTenantCustomizations({
    this.certificate,
    this.geoRestriction,
    this.webAcl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateValue = certificate;
    if (certificateValue != null) {
      map['certificate'] = certificateValue.toMap();
    }
    final geoRestrictionValue = geoRestriction;
    if (geoRestrictionValue != null) {
      map['geoRestriction'] = geoRestrictionValue.toMap();
    }
    final webAclValue = webAcl;
    if (webAclValue != null) {
      map['webAcl'] = webAclValue.toMap();
    }
    return map;
  }

  factory DistributionTenantCustomizations.fromMap(Map<String, dynamic> map) {
    return DistributionTenantCustomizations(
      certificate: map['certificate'] == null
          ? null
          : DistributionTenantCustomizationsCertificate.fromMap(
              (map['certificate'] as Map).cast<String, dynamic>()),
      geoRestriction: map['geoRestriction'] == null
          ? null
          : DistributionTenantCustomizationsGeoRestriction.fromMap(
              (map['geoRestriction'] as Map).cast<String, dynamic>()),
      webAcl: map['webAcl'] == null
          ? null
          : DistributionTenantCustomizationsWebAcl.fromMap(
              (map['webAcl'] as Map).cast<String, dynamic>()),
    );
  }
}
