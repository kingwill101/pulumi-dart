// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_distribution_tenant_customization.dart';
import 'get_distribution_tenant_domain.dart';
import 'get_distribution_tenant_managed_certificate_request.dart';
import 'get_distribution_tenant_parameter.dart';

/// Result data returned by getDistributionTenant.
class GetDistributionTenantResult {
  /// ARN for the distribution tenant.
  final String? arn;
  /// The CloudFront connection group the tenant is associated with.
  final String? connectionGroupId;
  final List<GetDistributionTenantCustomization>? customizations;
  /// The ID of the CloudFront distribution the tenant is associated with.
  final String? distributionId;
  final String? domain;
  /// List of domains for the distribution tenant.
  final List<GetDistributionTenantDomain>? domains;
  /// Whether the distribution tenant is enabled.
  final bool? enabled;
  /// Current version of the distribution tenant's information. For example:
  /// `E2QWRUHAPOMQZL`.
  final String? etag;
  final String? id;
  final List<GetDistributionTenantManagedCertificateRequest>? managedCertificateRequests;
  final String? name;
  final List<GetDistributionTenantParameter>? parameters;
  /// Current status of the distribution tenant. `Deployed` if the
  /// distribution tenant's information is fully propagated throughout the Amazon
  /// CloudFront system.
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetDistributionTenantResult].
  /// [arn] ARN for the distribution tenant.
  /// [connectionGroupId] The CloudFront connection group the tenant is associated with.
  /// [customizations] Optional.
  /// [distributionId] The ID of the CloudFront distribution the tenant is associated with.
  /// [domain] Optional.
  /// [domains] List of domains for the distribution tenant.
  /// [enabled] Whether the distribution tenant is enabled.
  /// [etag] Current version of the distribution tenant's information. For example:
  /// [id] Optional.
  /// [managedCertificateRequests] Optional.
  /// [name] Optional.
  /// [parameters] Optional.
  /// [status] Current status of the distribution tenant. `Deployed` if the
  /// [tags] Optional.
  const GetDistributionTenantResult({
    this.arn,
    this.connectionGroupId,
    this.customizations,
    this.distributionId,
    this.domain,
    this.domains,
    this.enabled,
    this.etag,
    this.id,
    this.managedCertificateRequests,
    this.name,
    this.parameters,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectionGroupId': ?connectionGroupId,
      'customizations': ?(() { final guardedValue = customizations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDistributionTenantCustomization, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'distributionId': ?distributionId,
      'domain': ?domain,
      'domains': ?(() { final guardedValue = domains; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDistributionTenantDomain, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'enabled': ?enabled,
      'etag': ?etag,
      'id': ?id,
      'managedCertificateRequests': ?(() { final guardedValue = managedCertificateRequests; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDistributionTenantManagedCertificateRequest, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDistributionTenantParameter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetDistributionTenantResult.fromMap(Map<String, dynamic> map) {
    return GetDistributionTenantResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      connectionGroupId: (() { final guardedValue = map['connectionGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customizations: (() { final guardedValue = map['customizations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDistributionTenantCustomization>(guardedValue, (value) => GetDistributionTenantCustomization.fromMap((value as Map).cast<String, dynamic>())); })(),
      distributionId: (() { final guardedValue = map['distributionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domains: (() { final guardedValue = map['domains']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDistributionTenantDomain>(guardedValue, (value) => GetDistributionTenantDomain.fromMap((value as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedCertificateRequests: (() { final guardedValue = map['managedCertificateRequests']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDistributionTenantManagedCertificateRequest>(guardedValue, (value) => GetDistributionTenantManagedCertificateRequest.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDistributionTenantParameter>(guardedValue, (value) => GetDistributionTenantParameter.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
