import 'package:pulumi/pulumi.dart';
import '../custom_permissions_capabilities/custom_permissions_capabilities.dart';
import 'custom_permissions_args.dart';

/// Manages a QuickSight custom permissions profile.
///
/// ## Example Usage
///
/// resource "aws.quicksight.CustomPermissions" "example" {
/// custom_permissions_name = "example-permissions"
///
/// capabilities {
/// print_reports    = "DENY"
/// share_dashboards = "DENY"
/// }
/// }
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight custom permissions profile using the AWS account ID and custom permissions profile name separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/customPermissions:CustomPermissions example 123456789012,example-permissions
/// ```
class CustomPermissions extends CustomResource {
  /// ARN of the custom permissions profile.
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// Actions to include in the custom permissions profile. See capabilities.
  late final Output<CustomPermissionsCapabilities> capabilities;

  /// Custom permissions profile name.
  ///
  /// The following arguments are optional:
  late final Output<String> customPermissionsName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  CustomPermissions(
    String name, {
    CustomPermissionsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/customPermissions:CustomPermissions',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.capabilities =
        registerOutput<CustomPermissionsCapabilities>('capabilities');
    this.customPermissionsName =
        registerOutput<String>('customPermissionsName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
