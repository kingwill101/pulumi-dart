import 'package:pulumi/pulumi.dart';
import '../distribution_tenant_customizations/distribution_tenant_customizations.dart';
import '../distribution_tenant_domain/distribution_tenant_domain.dart';
import '../distribution_tenant_managed_certificate_request/distribution_tenant_managed_certificate_request.dart';
import '../distribution_tenant_parameter/distribution_tenant_parameter.dart';
import '../distribution_tenant_timeouts/distribution_tenant_timeouts.dart';
import 'distribution_tenant_args.dart';

/// Creates an Amazon CloudFront distribution tenant.
///
/// Distribution tenants allow you to create isolated configurations within a multi-tenant CloudFront distribution. Each tenant can have its own domains, customizations, and parameters while sharing the underlying distribution infrastructure.
///
/// For information about CloudFront distribution tenants, see the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-tenants.html).
///
/// ## Example Usage
///
/// ### Basic Distribution Tenant
///
///
///
/// ### Distribution Tenant with Customizations
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Distribution Tenants using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/distributionTenant:DistributionTenant example TENANT123EXAMPLE
/// ```
class DistributionTenant extends CustomResource {
  /// ARN of the distribution tenant.
  late final Output<String> arn;

  /// ID of the connection group for the distribution tenant. If not specified, CloudFront uses the default connection group.
  late final Output<String> connectionGroupId;

  /// Customizations for the distribution tenant (maximum one).
  late final Output<DistributionTenantCustomizations?> customizations;

  /// ID of the multi-tenant distribution.
  late final Output<String> distributionId;

  /// Set of domains associated with the distribution tenant.
  late final Output<List<DistributionTenantDomain>?> domains;

  /// Whether the distribution tenant is enabled to serve traffic. Defaults to `true`.
  late final Output<bool> enabled;

  /// Current version of the distribution tenant.
  late final Output<String> etag;

  /// Managed certificate request for CloudFront managed ACM certificate (maximum one).
  late final Output<DistributionTenantManagedCertificateRequest?>
      managedCertificateRequest;

  /// Name of the distribution tenant.
  late final Output<String> name;

  /// Set of parameter values for the distribution tenant.
  late final Output<List<DistributionTenantParameter>?> parameters;

  /// Current status of the distribution tenant.
  late final Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<DistributionTenantTimeouts?> timeouts;

  /// If enabled, the resource will wait for the distribution tenant status to change from `InProgress` to `Deployed`. Setting this to `false` will skip the process. Default: `true`.
  late final Output<bool> waitForDeployment;

  DistributionTenant(
    String name, {
    DistributionTenantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/distributionTenant:DistributionTenant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.connectionGroupId = registerOutput<String>('connectionGroupId');
    this.customizations =
        registerOutput<DistributionTenantCustomizations?>('customizations');
    this.distributionId = registerOutput<String>('distributionId');
    this.domains = registerOutput<List<DistributionTenantDomain>?>('domains');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.managedCertificateRequest =
        registerOutput<DistributionTenantManagedCertificateRequest?>(
            'managedCertificateRequest');
    this.name = registerOutput<String>('name');
    this.parameters =
        registerOutput<List<DistributionTenantParameter>?>('parameters');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<DistributionTenantTimeouts?>('timeouts');
    this.waitForDeployment = registerOutput<bool>('waitForDeployment');
  }
}
