// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_tenant_customization.dart';
import 'get_distribution_tenant_domain.dart';
import 'get_distribution_tenant_managed_certificate_request.dart';
import 'get_distribution_tenant_parameter.dart';

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

  /// Creates a new [GetDistributionTenantResult].
  /// [arn] ARN (Amazon Resource Name) for the distribution tenant.
  /// [connectionGroupId] The CloudFront connection group the tenant is associated with.
  /// [customizations] Required.
  /// [distributionId] The ID of the CloudFront distribution the tenant is associated with.
  /// [domain] Optional.
  /// [domains] List of domains for the distribution tenant.
  /// [enabled] Whether the distribution tenant is enabled.
  /// [etag] Current version of the distribution tenant's information. For example:
  /// [id] Required.
  /// [managedCertificateRequests] Required.
  /// [name] Required.
  /// [parameters] Required.
  /// [status] Current status of the distribution tenant. `Deployed` if the
  /// [tags] Required.
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
    return <String, dynamic>{
      'arn': arn,
      'connectionGroupId': connectionGroupId,
      'customizations':
          pulumi.Input.encodeList<
            GetDistributionTenantCustomization,
            Map<String, dynamic>
          >(customizations, (value) => value.toMap()),
      'distributionId': distributionId,
      'domain': ?domain,
      'domains':
          pulumi.Input.encodeList<
            GetDistributionTenantDomain,
            Map<String, dynamic>
          >(domains, (value) => value.toMap()),
      'enabled': enabled,
      'etag': etag,
      'id': id,
      'managedCertificateRequests':
          pulumi.Input.encodeList<
            GetDistributionTenantManagedCertificateRequest,
            Map<String, dynamic>
          >(managedCertificateRequests, (value) => value.toMap()),
      'name': name,
      'parameters':
          pulumi.Input.encodeList<
            GetDistributionTenantParameter,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'status': status,
      'tags': tags,
    };
  }

  factory GetDistributionTenantResult.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantResult(
      arn: map['arn'] as String,
      connectionGroupId: map['connectionGroupId'] as String,
      customizations:
          pulumi.Input.decodeList<GetDistributionTenantCustomization>(
            map['customizations'],
            (value) => GetDistributionTenantCustomization.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      distributionId: map['distributionId'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      domains: pulumi.Input.decodeList<GetDistributionTenantDomain>(
        map['domains'],
        (value) => GetDistributionTenantDomain.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      enabled: map['enabled'] as bool,
      etag: map['etag'] as String,
      id: map['id'] as String,
      managedCertificateRequests:
          pulumi
              .Input.decodeList<GetDistributionTenantManagedCertificateRequest>(
            map['managedCertificateRequests'],
            (value) => GetDistributionTenantManagedCertificateRequest.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      parameters: pulumi.Input.decodeList<GetDistributionTenantParameter>(
        map['parameters'],
        (value) => GetDistributionTenantParameter.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
