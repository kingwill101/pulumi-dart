// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_tenant_customizations.dart';
import 'distribution_tenant_domain.dart';
import 'distribution_tenant_managed_certificate_request.dart';
import 'distribution_tenant_parameter.dart';
import 'distribution_tenant_timeouts.dart';

/// {@template pulumi_cloudfront_distribution_tenant_distribution_tenant_args_doc}
/// The set of arguments for DistributionTenant.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_distribution_tenant_distribution_tenant_args_doc}
class DistributionTenantArgs {
  /// ID of the connection group for the distribution tenant. If not specified, CloudFront uses the default connection group.
  final pulumi.Input<String>? connectionGroupId;
  /// Customizations for the distribution tenant (maximum one).
  final pulumi.Input<DistributionTenantCustomizations>? customizations;
  /// ID of the multi-tenant distribution.
  final pulumi.Input<String> distributionId;
  /// Set of domains associated with the distribution tenant.
  final pulumi.Input<List<DistributionTenantDomain>>? domains;
  /// Whether the distribution tenant is enabled to serve traffic. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Managed certificate request for CloudFront managed ACM certificate (maximum one).
  final pulumi.Input<DistributionTenantManagedCertificateRequest>? managedCertificateRequest;
  /// Name of the distribution tenant.
  final pulumi.Input<String>? name;
  /// Set of parameter values for the distribution tenant.
  final pulumi.Input<List<DistributionTenantParameter>>? parameters;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<DistributionTenantTimeouts>? timeouts;
  /// If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to `false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForDeployment;

  /// Creates a new [DistributionTenantArgs].
  /// [connectionGroupId] ID of the connection group for the distribution tenant. If not specified, CloudFront uses the default connection group.
  /// [customizations] Customizations for the distribution tenant (maximum one).
  /// [distributionId] ID of the multi-tenant distribution.
  /// [domains] Set of domains associated with the distribution tenant.
  /// [enabled] Whether the distribution tenant is enabled to serve traffic. Defaults to `true`.
  /// [managedCertificateRequest] Managed certificate request for CloudFront managed ACM certificate (maximum one).
  /// [name] Name of the distribution tenant.
  /// [parameters] Set of parameter values for the distribution tenant.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [waitForDeployment] If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to `false` will skip the process. Default: `true`.
  DistributionTenantArgs({
    String? connectionGroupId,
    DistributionTenantCustomizations? customizations,
    required String distributionId,
    List<DistributionTenantDomain>? domains,
    bool? enabled,
    DistributionTenantManagedCertificateRequest? managedCertificateRequest,
    String? name,
    List<DistributionTenantParameter>? parameters,
    Map<String, String>? tags,
    DistributionTenantTimeouts? timeouts,
    bool? waitForDeployment,
  }) :
      connectionGroupId = pulumi.Input.asOptionalInput<String>(connectionGroupId),
      customizations = pulumi.Input.asOptionalInput<DistributionTenantCustomizations>(customizations),
      distributionId = pulumi.Input.asInput<String>(distributionId),
      domains = pulumi.Input.asOptionalInput<List<DistributionTenantDomain>>(domains),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      managedCertificateRequest = pulumi.Input.asOptionalInput<DistributionTenantManagedCertificateRequest>(managedCertificateRequest),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<List<DistributionTenantParameter>>(parameters),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<DistributionTenantTimeouts>(timeouts),
      waitForDeployment = pulumi.Input.asOptionalInput<bool>(waitForDeployment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionGroupId': ?connectionGroupId,
      'customizations': ?pulumi.Input.mapOptionalInputValue<DistributionTenantCustomizations, Map<String, dynamic>>(customizations, (value) => value.toMap()),
      'distributionId': distributionId,
      'domains': ?pulumi.Input.mapOptionalInputValue<List<DistributionTenantDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<DistributionTenantDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'managedCertificateRequest': ?pulumi.Input.mapOptionalInputValue<DistributionTenantManagedCertificateRequest, Map<String, dynamic>>(managedCertificateRequest, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<DistributionTenantParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<DistributionTenantParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DistributionTenantTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForDeployment': ?waitForDeployment,
    };
  }

  factory DistributionTenantArgs.fromMap(Map<String, dynamic> map) {
    return DistributionTenantArgs(
      connectionGroupId: map['connectionGroupId'] == null ? null : map['connectionGroupId'] as String,
      customizations: map['customizations'] == null ? null : DistributionTenantCustomizations.fromMap((map['customizations'] as Map).cast<String, dynamic>()),
      distributionId: map['distributionId'] as String,
      domains: map['domains'] == null ? null : pulumi.Input.decodeList<DistributionTenantDomain>(map['domains'], (value) => DistributionTenantDomain.fromMap((value as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      managedCertificateRequest: map['managedCertificateRequest'] == null ? null : DistributionTenantManagedCertificateRequest.fromMap((map['managedCertificateRequest'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<DistributionTenantParameter>(map['parameters'], (value) => DistributionTenantParameter.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null ? null : DistributionTenantTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
      waitForDeployment: map['waitForDeployment'] == null ? null : map['waitForDeployment'] as bool,
    );
  }
}

