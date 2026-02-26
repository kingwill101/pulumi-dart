// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_distribution_tenant_customization/get_distribution_tenant_customization.dart';
import '../get_distribution_tenant_domain/get_distribution_tenant_domain.dart';
import '../get_distribution_tenant_managed_certificate_request/get_distribution_tenant_managed_certificate_request.dart';
import '../get_distribution_tenant_parameter/get_distribution_tenant_parameter.dart';

/// Result data returned by getDistributionTenant.
class GetDistributionTenantResult {
  /// ARN (Amazon Resource Name) for the distribution tenant.
  final String arn;

  /// The CloudFront connection group the tenant is associated with.
  final String connectionGroupId;
  final List<GetDistributionTenantCustomization> customizations;

  /// The ID of the CloudFront distribution the tenant is associated with.
  final String distributionId;
  final String? domain;

  /// List of domains for the distribution tenant.
  final List<GetDistributionTenantDomain> domains;

  /// Whether the distribution tenant is enabled.
  final bool enabled;

  /// Current version of the distribution tenant's information. For example:
  /// `E2QWRUHAPOMQZL`.
  final String etag;
  final String id;
  final List<GetDistributionTenantManagedCertificateRequest>
      managedCertificateRequests;
  final String name;
  final List<GetDistributionTenantParameter> parameters;

  /// Current status of the distribution tenant. `Deployed` if the
  /// distribution tenant's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final String status;
  final Map<String, String> tags;

  GetDistributionTenantResult({
    required this.arn,
    required this.connectionGroupId,
    required this.customizations,
    required this.distributionId,
    this.domain,
    required this.domains,
    required this.enabled,
    required this.etag,
    required this.id,
    required this.managedCertificateRequests,
    required this.name,
    required this.parameters,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['connectionGroupId'] = connectionGroupId;
    map['customizations'] = Input.encodeList<GetDistributionTenantCustomization,
        Map<String, dynamic>>(customizations, (value) => value.toMap());
    map['distributionId'] = distributionId;
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    map['domains'] =
        Input.encodeList<GetDistributionTenantDomain, Map<String, dynamic>>(
            domains, (value) => value.toMap());
    map['enabled'] = enabled;
    map['etag'] = etag;
    map['id'] = id;
    map['managedCertificateRequests'] = Input.encodeList<
            GetDistributionTenantManagedCertificateRequest,
            Map<String, dynamic>>(
        managedCertificateRequests, (value) => value.toMap());
    map['name'] = name;
    map['parameters'] =
        Input.encodeList<GetDistributionTenantParameter, Map<String, dynamic>>(
            parameters, (value) => value.toMap());
    map['status'] = status;
    map['tags'] = tags;
    return map;
  }

  factory GetDistributionTenantResult.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantResult(
      arn: map['arn'] as String,
      connectionGroupId: map['connectionGroupId'] as String,
      customizations: Input.decodeList<GetDistributionTenantCustomization>(
          map['customizations'],
          (value) => GetDistributionTenantCustomization.fromMap(
              (value as Map).cast<String, dynamic>())),
      distributionId: map['distributionId'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      domains: Input.decodeList<GetDistributionTenantDomain>(
          map['domains'],
          (value) => GetDistributionTenantDomain.fromMap(
              (value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] as bool,
      etag: map['etag'] as String,
      id: map['id'] as String,
      managedCertificateRequests:
          Input.decodeList<GetDistributionTenantManagedCertificateRequest>(
              map['managedCertificateRequests'],
              (value) => GetDistributionTenantManagedCertificateRequest.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parameters: Input.decodeList<GetDistributionTenantParameter>(
          map['parameters'],
          (value) => GetDistributionTenantParameter.fromMap(
              (value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
