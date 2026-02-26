import 'package:pulumi/pulumi.dart';
import '../custom_permissions_capabilities/custom_permissions_capabilities.dart';
import 'custom_permissions_args.dart';

/// Manages a QuickSight custom permissions profile.
///
/// ## Example Usage
///
/// resource <span pulumi-lang-nodejs=""aws.quicksight.CustomPermissions"" pulumi-lang-dotnet=""aws.quicksight.CustomPermissions"" pulumi-lang-go=""quicksight.CustomPermissions"" pulumi-lang-python=""quicksight.CustomPermissions"" pulumi-lang-yaml=""aws.quicksight.CustomPermissions"" pulumi-lang-java=""aws.quicksight.CustomPermissions"">"aws.quicksight.CustomPermissions"</span> "example" {
/// <span pulumi-lang-nodejs=" customPermissionsName " pulumi-lang-dotnet=" CustomPermissionsName " pulumi-lang-go=" customPermissionsName " pulumi-lang-python=" custom_permissions_name " pulumi-lang-yaml=" customPermissionsName " pulumi-lang-java=" customPermissionsName "> custom_permissions_name </span>= "example-permissions"
///
/// capabilities {
/// <span pulumi-lang-nodejs=" printReports " pulumi-lang-dotnet=" PrintReports " pulumi-lang-go=" printReports " pulumi-lang-python=" print_reports " pulumi-lang-yaml=" printReports " pulumi-lang-java=" printReports "> print_reports </span>   = "DENY"
/// <span pulumi-lang-nodejs=" shareDashboards " pulumi-lang-dotnet=" ShareDashboards " pulumi-lang-go=" shareDashboards " pulumi-lang-python=" share_dashboards " pulumi-lang-yaml=" shareDashboards " pulumi-lang-java=" shareDashboards "> share_dashboards </span>= "DENY"
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

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
    this.arn = Output.createUnknown<String>();
    this.awsAccountId = Output.createUnknown<String>();
    this.capabilities = Output.createUnknown<CustomPermissionsCapabilities>();
    this.customPermissionsName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
