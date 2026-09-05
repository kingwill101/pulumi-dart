// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_tenant_customizations_certificate.dart';
import 'distribution_tenant_customizations_geo_restriction.dart';
import 'distribution_tenant_customizations_web_acl.dart';

class DistributionTenantCustomizations {
  /// Certificate configuration for the tenant (maximum one).
  final pulumi.Input<DistributionTenantCustomizationsCertificate?>? certificate;
  /// Geographic restrictions configuration for the tenant (maximum one).
  final pulumi.Input<DistributionTenantCustomizationsGeoRestriction?>? geoRestriction;
  /// Web ACL configuration for the tenant (maximum one).
  final pulumi.Input<DistributionTenantCustomizationsWebAcl?>? webAcl;

  /// Creates a new [DistributionTenantCustomizations].
  /// [certificate] Certificate configuration for the tenant (maximum one).
  /// [geoRestriction] Geographic restrictions configuration for the tenant (maximum one).
  /// [webAcl] Web ACL configuration for the tenant (maximum one).
  const DistributionTenantCustomizations({
    this.certificate,
    this.geoRestriction,
    this.webAcl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?pulumi.Input.mapOptionalInputValue<DistributionTenantCustomizationsCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'geoRestriction': ?pulumi.Input.mapOptionalInputValue<DistributionTenantCustomizationsGeoRestriction, Map<String, dynamic>>(geoRestriction, (value) => value.toMap()),
      'webAcl': ?pulumi.Input.mapOptionalInputValue<DistributionTenantCustomizationsWebAcl, Map<String, dynamic>>(webAcl, (value) => value.toMap()),
    };
  }

  factory DistributionTenantCustomizations.fromMap(Map<String, dynamic> map) {
    return DistributionTenantCustomizations(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionTenantCustomizationsCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geoRestriction: (() { final guardedValue = map['geoRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionTenantCustomizationsGeoRestriction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webAcl: (() { final guardedValue = map['webAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DistributionTenantCustomizationsWebAcl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
