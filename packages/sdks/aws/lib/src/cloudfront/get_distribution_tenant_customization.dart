// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_tenant_customization_certificate.dart';
import 'get_distribution_tenant_customization_geo_restriction.dart';
import 'get_distribution_tenant_customization_web_acl.dart';

class GetDistributionTenantCustomization {
  final pulumi.Input<List<GetDistributionTenantCustomizationCertificate>> certificates;
  final pulumi.Input<List<GetDistributionTenantCustomizationGeoRestriction>> geoRestrictions;
  final pulumi.Input<List<GetDistributionTenantCustomizationWebAcl>> webAcls;

  /// Creates a new [GetDistributionTenantCustomization].
  /// [certificates] Required.
  /// [geoRestrictions] Required.
  /// [webAcls] Required.
  GetDistributionTenantCustomization({
    required this.certificates,
    required this.geoRestrictions,
    required this.webAcls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificates': pulumi.Input.mapInputValue<List<GetDistributionTenantCustomizationCertificate>, List<Map<String, dynamic>>>(certificates, (value) => pulumi.Input.encodeList<GetDistributionTenantCustomizationCertificate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'geoRestrictions': pulumi.Input.mapInputValue<List<GetDistributionTenantCustomizationGeoRestriction>, List<Map<String, dynamic>>>(geoRestrictions, (value) => pulumi.Input.encodeList<GetDistributionTenantCustomizationGeoRestriction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'webAcls': pulumi.Input.mapInputValue<List<GetDistributionTenantCustomizationWebAcl>, List<Map<String, dynamic>>>(webAcls, (value) => pulumi.Input.encodeList<GetDistributionTenantCustomizationWebAcl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDistributionTenantCustomization.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantCustomization(
      certificates: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDistributionTenantCustomizationCertificate>(map['certificates']!, (value) => GetDistributionTenantCustomizationCertificate.fromMap((value as Map).cast<String, dynamic>()))),
      geoRestrictions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDistributionTenantCustomizationGeoRestriction>(map['geoRestrictions']!, (value) => GetDistributionTenantCustomizationGeoRestriction.fromMap((value as Map).cast<String, dynamic>()))),
      webAcls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDistributionTenantCustomizationWebAcl>(map['webAcls']!, (value) => GetDistributionTenantCustomizationWebAcl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

