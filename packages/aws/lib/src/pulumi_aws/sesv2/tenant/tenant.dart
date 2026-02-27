import 'package:pulumi/pulumi.dart';
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
class Tenant extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Current sending status of the tenant.
  late final Output<String> sendingStatus;

  /// Map of tags to assign to the tenant.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the tenant, including provider default tags.
  late final Output<Map<String, String>> tagsAll;

  /// ARN of the Tenant.
  late final Output<String> tenantArn;

  /// ID of the Tenant.
  late final Output<String> tenantId;

  /// Name of the SESV2 tenant.  The name must be unique within the AWS account and Region.  Changing the tenant name forces creation of a new tenant.
  ///
  /// The following arguments are optional:
  late final Output<String> tenantName;

  Tenant(
    String name, {
    TenantArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/tenant:Tenant',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
