// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_tenant_customizations.dart';
import 'distribution_tenant_domain.dart';
import 'distribution_tenant_managed_certificate_request.dart';
import 'distribution_tenant_parameter.dart';
import 'distribution_tenant_timeouts.dart';

/// Input properties used for looking up and filtering DistributionTenant resources.
class DistributionTenantState {
  /// ARN of the distribution tenant.
  final pulumi.Input<String>? arn;
  /// ID of the connection group for the distribution tenant. If not specified, CloudFront uses the default connection group.
  final pulumi.Input<String>? connectionGroupId;
  /// Customizations for the distribution tenant (maximum one).
  final pulumi.Input<DistributionTenantCustomizations>? customizations;
  /// ID of the multi-tenant distribution.
  final pulumi.Input<String>? distributionId;
  /// Set of domains associated with the distribution tenant.
  final pulumi.Input<List<DistributionTenantDomain>>? domains;
  /// Whether the distribution tenant is enabled to serve traffic. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// Current version of the distribution tenant.
  final pulumi.Input<String>? etag;
  /// Managed certificate request for CloudFront managed ACM certificate (maximum one).
  final pulumi.Input<DistributionTenantManagedCertificateRequest>? managedCertificateRequest;
  /// Name of the distribution tenant.
  final pulumi.Input<String>? name;
  /// Set of parameter values for the distribution tenant.
  final pulumi.Input<List<DistributionTenantParameter>>? parameters;
  /// Current status of the distribution tenant.
  final pulumi.Input<String>? status;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<DistributionTenantTimeouts>? timeouts;
  /// If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to `false` will skip the process. Default: `true`.
  final pulumi.Input<bool>? waitForDeployment;

  /// Creates a new [DistributionTenantState].
  /// [arn] ARN of the distribution tenant.
  /// [connectionGroupId] ID of the connection group for the distribution tenant. If not specified, CloudFront uses the default connection group.
  /// [customizations] Customizations for the distribution tenant (maximum one).
  /// [distributionId] ID of the multi-tenant distribution.
  /// [domains] Set of domains associated with the distribution tenant.
  /// [enabled] Whether the distribution tenant is enabled to serve traffic. Defaults to `true`.
  /// [etag] Current version of the distribution tenant.
  /// [managedCertificateRequest] Managed certificate request for CloudFront managed ACM certificate (maximum one).
  /// [name] Name of the distribution tenant.
  /// [parameters] Set of parameter values for the distribution tenant.
  /// [status] Current status of the distribution tenant.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [waitForDeployment] If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to `false` will skip the process. Default: `true`.
  DistributionTenantState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? connectionGroupId,
    pulumi.Output<DistributionTenantCustomizations>? customizations,
    pulumi.Output<String>? distributionId,
    pulumi.Output<List<DistributionTenantDomain>>? domains,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? etag,
    pulumi.Output<DistributionTenantManagedCertificateRequest>? managedCertificateRequest,
    pulumi.Output<String>? name,
    pulumi.Output<List<DistributionTenantParameter>>? parameters,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<DistributionTenantTimeouts>? timeouts,
    pulumi.Output<bool>? waitForDeployment,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      connectionGroupId = pulumi.Input.asOptionalInput<String>(connectionGroupId),
      customizations = pulumi.Input.asOptionalInput<DistributionTenantCustomizations>(customizations),
      distributionId = pulumi.Input.asOptionalInput<String>(distributionId),
      domains = pulumi.Input.asOptionalInput<List<DistributionTenantDomain>>(domains),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      managedCertificateRequest = pulumi.Input.asOptionalInput<DistributionTenantManagedCertificateRequest>(managedCertificateRequest),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<List<DistributionTenantParameter>>(parameters),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<DistributionTenantTimeouts>(timeouts),
      waitForDeployment = pulumi.Input.asOptionalInput<bool>(waitForDeployment);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'connectionGroupId': ?connectionGroupId,
      'customizations': ?pulumi.Input.mapOptionalInputValue<DistributionTenantCustomizations, Map<String, dynamic>>(customizations, (value) => value.toMap()),
      'distributionId': ?distributionId,
      'domains': ?pulumi.Input.mapOptionalInputValue<List<DistributionTenantDomain>, List<Map<String, dynamic>>>(domains, (value) => pulumi.Input.encodeList<DistributionTenantDomain, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enabled': ?enabled,
      'etag': ?etag,
      'managedCertificateRequest': ?pulumi.Input.mapOptionalInputValue<DistributionTenantManagedCertificateRequest, Map<String, dynamic>>(managedCertificateRequest, (value) => value.toMap()),
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<DistributionTenantParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<DistributionTenantParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<DistributionTenantTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForDeployment': ?waitForDeployment,
    };
  }

  factory DistributionTenantState.fromMap(Map<String, dynamic> map) {
    return DistributionTenantState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      connectionGroupId: map['connectionGroupId'] == null ? null : pulumi.Output.create<String>(map['connectionGroupId'] as String),
      customizations: map['customizations'] == null ? null : pulumi.Output.create<DistributionTenantCustomizations>(DistributionTenantCustomizations.fromMap((map['customizations'] as Map).cast<String, dynamic>())),
      distributionId: map['distributionId'] == null ? null : pulumi.Output.create<String>(map['distributionId'] as String),
      domains: map['domains'] == null ? null : pulumi.Output.create<List<DistributionTenantDomain>>(pulumi.Input.decodeList<DistributionTenantDomain>(map['domains'], (value) => DistributionTenantDomain.fromMap((value as Map).cast<String, dynamic>()))),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      managedCertificateRequest: map['managedCertificateRequest'] == null ? null : pulumi.Output.create<DistributionTenantManagedCertificateRequest>(DistributionTenantManagedCertificateRequest.fromMap((map['managedCertificateRequest'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<DistributionTenantParameter>>(pulumi.Input.decodeList<DistributionTenantParameter>(map['parameters'], (value) => DistributionTenantParameter.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<DistributionTenantTimeouts>(DistributionTenantTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      waitForDeployment: map['waitForDeployment'] == null ? null : pulumi.Output.create<bool>(map['waitForDeployment'] as bool),
    );
  }
}

