import 'package:pulumi/pulumi.dart' as pulumi;
import '../iam_audit_config_audit_log_config/iam_audit_config_audit_log_config_organizations.dart';
import 'iam_audit_config_organizations_args.dart';

/// Allows management of audit logging config for a given service for a Google Cloud Platform Organization.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// IAM audit config imports use the identifier of the resource in question and the service, e.g.
///
/// ```sh
/// $ pulumi import gcp:organizations/iamAuditConfig:IamAuditConfig config "your-organization-id foo.googleapis.com"
/// ```
class IamAuditConfigOrganizations extends pulumi.CustomResource {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  late final pulumi.Output<List<IamAuditConfigAuditLogConfigOrganizations>>
      auditLogConfigs;

  /// The etag of iam policy
  late final pulumi.Output<String> etag;

  /// The numeric ID of the organization in which you want to manage the audit logging config.
  late final pulumi.Output<String> orgId;

  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are google\_organization\_iam\_audit\_config resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  late final pulumi.Output<String> service;

  IamAuditConfigOrganizations(
    String name, {
    IamAuditConfigOrganizationsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iamAuditConfig:IamAuditConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.auditLogConfigs =
        registerOutput<List<IamAuditConfigAuditLogConfigOrganizations>>(
            'auditLogConfigs');
    this.etag = registerOutput<String>('etag');
    this.orgId = registerOutput<String>('orgId');
    this.service = registerOutput<String>('service');
  }
}
