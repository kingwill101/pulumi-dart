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
    return <String, dynamic>{
      'connectionGroupId': ?connectionGroupId,
      'customizations':
          ?pulumi.Input.mapOptionalInputValue<
            DistributionTenantCustomizations,
            Map<String, dynamic>
          >(customizations, (value) => value.toMap()),
      'distributionId': distributionId,
      'domains':
          ?pulumi.Input.mapOptionalInputValue<
            List<DistributionTenantDomain>,
            List<Map<String, dynamic>>
          >(
            domains,
            (value) =>
                pulumi.Input.encodeList<
                  DistributionTenantDomain,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'enabled': ?enabled,
      'managedCertificateRequest':
          ?pulumi.Input.mapOptionalInputValue<
            DistributionTenantManagedCertificateRequest,
            Map<String, dynamic>
          >(managedCertificateRequest, (value) => value.toMap()),
      'name': ?name,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<DistributionTenantParameter>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  DistributionTenantParameter,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            DistributionTenantTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'waitForDeployment': ?waitForDeployment,
    };
  }

  factory DistributionTenantArgs.fromMap(Map<String, dynamic> map) {
    return DistributionTenantArgs(
      connectionGroupId: (() {
        final guardedValue = map['connectionGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customizations: (() {
        final guardedValue = map['customizations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DistributionTenantCustomizations.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      distributionId: pulumi.Input.fromValue(map['distributionId'] as String),
      domains: (() {
        final guardedValue = map['domains'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DistributionTenantDomain>(
            guardedValue,
            (value) => DistributionTenantDomain.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      managedCertificateRequest: (() {
        final guardedValue = map['managedCertificateRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DistributionTenantManagedCertificateRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DistributionTenantParameter>(
            guardedValue,
            (value) => DistributionTenantParameter.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DistributionTenantTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      waitForDeployment: (() {
        final guardedValue = map['waitForDeployment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
