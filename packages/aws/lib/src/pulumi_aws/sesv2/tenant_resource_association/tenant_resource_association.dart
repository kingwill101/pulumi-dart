import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_resource_association_args.dart';

/// Manages an AWS SESv2 (Simple Email V2) Tenant Resource Association.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Tenant Resource Association using the `tenant_name` and `resource_arn` separated by `|`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/tenantResourceAssociation:TenantResourceAssociation example "example-tenant|arn:aws:ses:us-east-1:123456789012:configuration-set/example"
/// ```
class TenantResourceAssociation extends pulumi.CustomResource {
  /// AWS region for SESv2 operations. If not specified, the default provider region is used.
  late final pulumi.Output<String> region;

  /// ARN of the SES resource to associate with the tenant.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceArn;

  /// Name of SES Tenant.
  late final pulumi.Output<String> tenantName;

  TenantResourceAssociation(
    String name, {
    TenantResourceAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/tenantResourceAssociation:TenantResourceAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.tenantName = registerOutput<String>('tenantName');
  }
}
