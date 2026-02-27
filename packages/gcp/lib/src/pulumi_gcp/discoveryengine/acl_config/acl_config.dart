import 'package:pulumi/pulumi.dart';
import '../acl_config_idp_config/acl_config_idp_config.dart';
import 'acl_config_args.dart';

/// Access Control Configuration.
///
///
/// To get more information about AclConfig, see:
///
/// * [API documentation](https://cloud.google.com/generative-ai-app-builder/docs/reference/rpc/google.cloud.discoveryengine.v1alpha#aclconfigservice)
///
/// ## Example Usage
///
/// ### Discoveryengine Aclconfig Basic
///
///
///
///
/// ## Import
///
/// AclConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/aclConfig`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, AclConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/aclConfig:AclConfig default projects/{{project}}/locations/{{location}}/aclConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/aclConfig:AclConfig default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/aclConfig:AclConfig default {{location}}
/// ```
class AclConfig extends CustomResource {
  /// Identity provider config.
  /// Structure is documented below.
  late final Output<AclConfigIdpConfig?> idpConfig;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final Output<String> location;

  /// The unique full resource name of the aclConfig. Values are of the format
  /// `projects/{project}/locations/{location}/aclConfig`.
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  AclConfig(
    String name, {
    AclConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/aclConfig:AclConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.idpConfig = registerOutput<AclConfigIdpConfig?>('idpConfig');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
