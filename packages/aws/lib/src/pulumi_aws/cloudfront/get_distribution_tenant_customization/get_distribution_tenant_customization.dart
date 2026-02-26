// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_distribution_tenant_customization_certificate/get_distribution_tenant_customization_certificate.dart';
import '../get_distribution_tenant_customization_geo_restriction/get_distribution_tenant_customization_geo_restriction.dart';
import '../get_distribution_tenant_customization_web_acl/get_distribution_tenant_customization_web_acl.dart';

class GetDistributionTenantCustomization {
  final List<GetDistributionTenantCustomizationCertificate> certificates;
  final List<GetDistributionTenantCustomizationGeoRestriction> geoRestrictions;
  final List<GetDistributionTenantCustomizationWebAcl> webAcls;

  GetDistributionTenantCustomization({
    required this.certificates,
    required this.geoRestrictions,
    required this.webAcls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificates'] = Input.encodeList<
        GetDistributionTenantCustomizationCertificate,
        Map<String, dynamic>>(certificates, (value) => value.toMap());
    map['geoRestrictions'] = Input.encodeList<
        GetDistributionTenantCustomizationGeoRestriction,
        Map<String, dynamic>>(geoRestrictions, (value) => value.toMap());
    map['webAcls'] = Input.encodeList<GetDistributionTenantCustomizationWebAcl,
        Map<String, dynamic>>(webAcls, (value) => value.toMap());
    return map;
  }

  factory GetDistributionTenantCustomization.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantCustomization(
      certificates:
          Input.decodeList<GetDistributionTenantCustomizationCertificate>(
              map['certificates'],
              (value) => GetDistributionTenantCustomizationCertificate.fromMap(
                  (value as Map).cast<String, dynamic>())),
      geoRestrictions:
          Input.decodeList<GetDistributionTenantCustomizationGeoRestriction>(
              map['geoRestrictions'],
              (value) =>
                  GetDistributionTenantCustomizationGeoRestriction.fromMap(
                      (value as Map).cast<String, dynamic>())),
      webAcls: Input.decodeList<GetDistributionTenantCustomizationWebAcl>(
          map['webAcls'],
          (value) => GetDistributionTenantCustomizationWebAcl.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
