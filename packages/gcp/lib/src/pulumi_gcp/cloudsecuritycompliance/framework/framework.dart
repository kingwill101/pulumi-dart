import 'package:pulumi/pulumi.dart';
import '../framework_cloud_control_detail/framework_cloud_control_detail.dart';
import 'framework_args.dart';

/// Frameworks allow you to monitor and enforce compliance and security requirements. Manage compliance by assigning built-in or custom frameworks to resources.
///
///
/// To get more information about Framework, see:
///
/// * [API documentation](https://docs.cloud.google.com/security-command-center/docs/reference/cloudsecuritycompliance/rest/v1/organizations.locations.frameworks)
///
/// ## Example Usage
///
/// ### Cloudsecuritycompliance Framework Basic
///
///
///
///
/// ## Import
///
/// Framework can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/frameworks/{{framework_id}}`
///
/// * `{{organization}}/{{location}}/{{framework_id}}`
///
/// When using the `pulumi import` command, Framework can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/framework:Framework default organizations/{{organization}}/locations/{{location}}/frameworks/{{framework_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:cloudsecuritycompliance/framework:Framework default {{organization}}/{{location}}/{{framework_id}}
/// ```
class Framework extends CustomResource {
  /// The category of the framework.
  late final Output<List<String>> categories;

  /// The details of the cloud controls directly added without any grouping in
  /// the framework.
  /// Structure is documented below.
  late final Output<List<FrameworkCloudControlDetail>?> cloudControlDetails;

  /// The description of the framework. The maximum length is 2000 characters.
  late final Output<String?> description;

  /// Display name of the framework. The maximum length is 200 characters.
  late final Output<String?> displayName;

  /// ID of the framework.
  /// This is not the full name of the framework.
  /// This is the last part of the full name of the framework.
  late final Output<String> frameworkId;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

  /// Major revision of the framework incremented in ascending order.
  late final Output<String> majorRevisionId;

  /// Identifier. The name of the framework.
  /// Format:
  /// organizations/{organization}/locations/{{location}}/frameworks/{framework_id}
  late final Output<String> name;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> organization;

  /// cloud providers supported
  late final Output<List<String>> supportedCloudProviders;

  /// The supported enforcement modes of the framework.
  late final Output<List<String>> supportedEnforcementModes;

  /// target resource types supported by the Framework.
  late final Output<List<String>> supportedTargetResourceTypes;

  /// The type of the framework. The default is TYPE_CUSTOM.
  /// Possible values:
  /// BUILT_IN
  /// CUSTOM
  late final Output<String> type;

  Framework(
    String name, {
    FrameworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudsecuritycompliance/framework:Framework',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.categories = registerOutput<List<String>>('categories');
    this.cloudControlDetails =
        registerOutput<List<FrameworkCloudControlDetail>?>(
            'cloudControlDetails');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String?>('displayName');
    this.frameworkId = registerOutput<String>('frameworkId');
    this.location = registerOutput<String>('location');
    this.majorRevisionId = registerOutput<String>('majorRevisionId');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.supportedCloudProviders =
        registerOutput<List<String>>('supportedCloudProviders');
    this.supportedEnforcementModes =
        registerOutput<List<String>>('supportedEnforcementModes');
    this.supportedTargetResourceTypes =
        registerOutput<List<String>>('supportedTargetResourceTypes');
    this.type = registerOutput<String>('type');
  }
}
