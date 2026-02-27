import 'package:pulumi/pulumi.dart';
import '../addons_config_addons_config/addons_config_addons_config.dart';
import 'addons_config_args.dart';

/// Configures the add-ons for the Apigee organization. The existing add-on configuration will be fully replaced.
///
///
/// To get more information about AddonsConfig, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations#setaddons)
/// * How-to Guides
/// * [Creating an API organization](https://cloud.google.com/apigee/docs/api-platform/get-started/create-org)
///
/// ## Example Usage
///
/// ### Apigee Addons Basic
///
///
///
/// ### Apigee Addons Full
///
///
///
///
/// ## Import
///
/// AddonsConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AddonsConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/addonsConfig:AddonsConfig default organizations/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/addonsConfig:AddonsConfig default {{name}}
/// ```
class AddonsConfig extends CustomResource {
  /// Addon configurations of the Apigee organization.
  /// Structure is documented below.
  late final Output<AddonsConfigAddonsConfig?> addonsConfig;

  /// Name of the Apigee organization.
  late final Output<String> org;

  AddonsConfig(
    String name, {
    AddonsConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/addonsConfig:AddonsConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addonsConfig =
        registerOutput<AddonsConfigAddonsConfig?>('addonsConfig');
    this.org = registerOutput<String>('org');
  }
}
