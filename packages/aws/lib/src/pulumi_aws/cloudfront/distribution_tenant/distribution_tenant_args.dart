// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../distribution_tenant_customizations/distribution_tenant_customizations.dart';
import '../distribution_tenant_domain/distribution_tenant_domain.dart';
import '../distribution_tenant_managed_certificate_request/distribution_tenant_managed_certificate_request.dart';
import '../distribution_tenant_parameter/distribution_tenant_parameter.dart';
import '../distribution_tenant_timeouts/distribution_tenant_timeouts.dart';

/// The set of arguments for DistributionTenant.
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
  final pulumi.Input<DistributionTenantManagedCertificateRequest>?
      managedCertificateRequest;

  /// Name of the distribution tenant.
  final pulumi.Input<String>? name;

  /// Set of parameter values for the distribution tenant.
  final pulumi.Input<List<DistributionTenantParameter>>? parameters;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<DistributionTenantTimeouts>? timeouts;

  /// If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to `false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForDeployment;

  DistributionTenantArgs({
    this.connectionGroupId,
    this.customizations,
    required this.distributionId,
    this.domains,
    this.enabled,
    this.managedCertificateRequest,
    this.name,
    this.parameters,
    this.tags,
    this.timeouts,
    this.waitForDeployment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionGroupIdValue = connectionGroupId;
    if (connectionGroupIdValue != null) {
      map['connectionGroupId'] = connectionGroupIdValue;
    }
    final customizationsValue = customizations;
    if (customizationsValue != null) {
      map['customizations'] = pulumi.Input.mapOptionalInputValue<
          DistributionTenantCustomizations,
          Map<String, dynamic>>(customizationsValue, (value) => value.toMap());
    }
    map['distributionId'] = distributionId;
    final domainsValue = domains;
    if (domainsValue != null) {
      map['domains'] = pulumi.Input.mapOptionalInputValue<
              List<DistributionTenantDomain>, List<Map<String, dynamic>>>(
          domainsValue,
          (value) => pulumi.Input.encodeList<DistributionTenantDomain,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final managedCertificateRequestValue = managedCertificateRequest;
    if (managedCertificateRequestValue != null) {
      map['managedCertificateRequest'] = pulumi.Input.mapOptionalInputValue<
              DistributionTenantManagedCertificateRequest,
              Map<String, dynamic>>(
          managedCertificateRequestValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = pulumi.Input.mapOptionalInputValue<
              List<DistributionTenantParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) => pulumi.Input.encodeList<DistributionTenantParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          DistributionTenantTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final waitForDeploymentValue = waitForDeployment;
    if (waitForDeploymentValue != null) {
      map['waitForDeployment'] = waitForDeploymentValue;
    }
    return map;
  }

  factory DistributionTenantArgs.fromMap(Map<String, dynamic> map) {
    return DistributionTenantArgs(
      connectionGroupId:
          pulumi.Input.asOptionalInput<String>(map['connectionGroupId']),
      customizations:
          pulumi.Input.asOptionalInput<DistributionTenantCustomizations>(
              map['customizations']),
      distributionId: pulumi.Input.asInput<String>(map['distributionId']),
      domains: pulumi.Input.asOptionalInput<List<DistributionTenantDomain>>(
          map['domains']),
      enabled: pulumi.Input.asOptionalInput<bool>(map['enabled']),
      managedCertificateRequest: pulumi.Input.asOptionalInput<
              DistributionTenantManagedCertificateRequest>(
          map['managedCertificateRequest']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parameters:
          pulumi.Input.asOptionalInput<List<DistributionTenantParameter>>(
              map['parameters']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: pulumi.Input.asOptionalInput<DistributionTenantTimeouts>(
          map['timeouts']),
      waitForDeployment:
          pulumi.Input.asOptionalInput<bool>(map['waitForDeployment']),
    );
  }
}
