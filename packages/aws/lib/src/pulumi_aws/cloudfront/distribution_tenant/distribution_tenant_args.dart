// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../distribution_tenant_customizations/distribution_tenant_customizations.dart';
import '../distribution_tenant_domain/distribution_tenant_domain.dart';
import '../distribution_tenant_managed_certificate_request/distribution_tenant_managed_certificate_request.dart';
import '../distribution_tenant_parameter/distribution_tenant_parameter.dart';
import '../distribution_tenant_timeouts/distribution_tenant_timeouts.dart';

/// The set of arguments for DistributionTenant.
class DistributionTenantArgs {
  /// ID of the connection group for the distribution tenant. If not specified, CloudFront uses the default connection group.
  final Input<String>? connectionGroupId;

  /// Customizations for the distribution tenant (maximum one).
  final Input<DistributionTenantCustomizations>? customizations;

  /// ID of the multi-tenant distribution.
  final Input<String> distributionId;

  /// Set of domains associated with the distribution tenant.
  final Input<List<DistributionTenantDomain>>? domains;

  /// Whether the distribution tenant is enabled to serve traffic. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// Managed certificate request for CloudFront managed ACM certificate (maximum one).
  final Input<DistributionTenantManagedCertificateRequest>?
      managedCertificateRequest;

  /// Name of the distribution tenant.
  final Input<String>? name;

  /// Set of parameter values for the distribution tenant.
  final Input<List<DistributionTenantParameter>>? parameters;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<DistributionTenantTimeouts>? timeouts;

  /// If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will skip the process. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? waitForDeployment;

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
      map['customizations'] = Input.mapOptionalInputValue<
          DistributionTenantCustomizations,
          Map<String, dynamic>>(customizationsValue, (value) => value.toMap());
    }
    map['distributionId'] = distributionId;
    final domainsValue = domains;
    if (domainsValue != null) {
      map['domains'] = Input.mapOptionalInputValue<
              List<DistributionTenantDomain>, List<Map<String, dynamic>>>(
          domainsValue,
          (value) =>
              Input.encodeList<DistributionTenantDomain, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final managedCertificateRequestValue = managedCertificateRequest;
    if (managedCertificateRequestValue != null) {
      map['managedCertificateRequest'] = Input.mapOptionalInputValue<
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
      map['parameters'] = Input.mapOptionalInputValue<
              List<DistributionTenantParameter>, List<Map<String, dynamic>>>(
          parametersValue,
          (value) => Input.encodeList<DistributionTenantParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<DistributionTenantTimeouts,
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
          Input.asOptionalInput<String>(map['connectionGroupId']),
      customizations: Input.asOptionalInput<DistributionTenantCustomizations>(
          map['customizations']),
      distributionId: Input.asInput<String>(map['distributionId']),
      domains:
          Input.asOptionalInput<List<DistributionTenantDomain>>(map['domains']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      managedCertificateRequest:
          Input.asOptionalInput<DistributionTenantManagedCertificateRequest>(
              map['managedCertificateRequest']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters: Input.asOptionalInput<List<DistributionTenantParameter>>(
          map['parameters']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<DistributionTenantTimeouts>(map['timeouts']),
      waitForDeployment: Input.asOptionalInput<bool>(map['waitForDeployment']),
    );
  }
}
