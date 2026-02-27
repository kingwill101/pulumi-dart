import 'package:pulumi/pulumi.dart' as pulumi;
import 'tenant_args.dart';

/// Manages an AWS SESv2 (Simple Email V2) Tenant.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an SESv2 Tenant using the `tenant_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/tenant:Tenant example example-tenant
/// ```
class Tenant extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Current sending status of the tenant.
  late final pulumi.Output<String> sendingStatus;

  /// Map of tags to assign to the tenant.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the tenant, including provider default tags.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// ARN of the Tenant.
  late final pulumi.Output<String> tenantArn;

  /// ID of the Tenant.
  late final pulumi.Output<String> tenantId;

  /// Name of the SESV2 tenant.  The name must be unique within the AWS account and Region.  Changing the tenant name forces creation of a new tenant.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> tenantName;

  Tenant(
    String name, {
    TenantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/tenant:Tenant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.sendingStatus = registerOutput<String>('sendingStatus');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenantArn = registerOutput<String>('tenantArn');
    this.tenantId = registerOutput<String>('tenantId');
    this.tenantName = registerOutput<String>('tenantName');
  }
}
