import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_permissions_args.dart';
import 'custom_permissions_capabilities.dart';
import 'custom_permissions_state.dart';

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
class CustomPermissions extends pulumi.CustomResource {
  /// ARN of the custom permissions profile.
  late final pulumi.Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final pulumi.Output<String> awsAccountId;

  /// Actions to include in the custom permissions profile. See capabilities.
  late final pulumi.Output<CustomPermissionsCapabilities> capabilities;

  /// Custom permissions profile name.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> customPermissionsName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [CustomPermissions].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomPermissions]. {@macro pulumi_quicksight_custom_permissions_custom_permissions_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomPermissions(
    String name, {
    CustomPermissionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:quicksight/customPermissions:CustomPermissions',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    capabilities = registerOutput<CustomPermissionsCapabilities>(
      'capabilities',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomPermissionsCapabilities.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    customPermissionsName = registerOutput<String>('customPermissionsName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [CustomPermissions] resource's state with the given [name] and [id].
  static CustomPermissions get(
    String name,
    pulumi.Input<String> id, {
    CustomPermissionsState? state,
  }) {
    return CustomPermissions._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomPermissions._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:quicksight/customPermissions:CustomPermissions',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    awsAccountId = registerOutput<String>('awsAccountId');
    capabilities = registerOutput<CustomPermissionsCapabilities>(
      'capabilities',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomPermissionsCapabilities.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    customPermissionsName = registerOutput<String>('customPermissionsName');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
