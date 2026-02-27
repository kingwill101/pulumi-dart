import 'package:pulumi/pulumi.dart';
import 'v2_organization_mute_config_args.dart';

/// Mute Findings is a volume management feature in Security Command Center
/// that lets you manually or programmatically hide irrelevant findings,
/// and create filters to automatically silence existing and future
/// findings based on criteria you specify.
///
///
/// To get more information about OrganizationMuteConfig, see:
///
/// * [API documentation](https://cloud.google.com/security-command-center/docs/reference/rest/v2/organizations.muteConfigs)
///
/// ## Example Usage
///
/// ### Scc V2 Organization Mute Config Basic
///
///
///
///
/// ## Import
///
/// OrganizationMuteConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/locations/{{location}}/muteConfigs/{{mute_config_id}}`
///
/// * `{{organization}}/{{location}}/{{mute_config_id}}`
///
/// When using the `pulumi import` command, OrganizationMuteConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationMuteConfig:V2OrganizationMuteConfig default organizations/{{organization}}/locations/{{location}}/muteConfigs/{{mute_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:securitycenter/v2OrganizationMuteConfig:V2OrganizationMuteConfig default {{organization}}/{{location}}/{{mute_config_id}}
/// ```
class V2OrganizationMuteConfig extends CustomResource {
  /// The time at which the mute config was created. This field is set by
  /// the server and will be ignored if provided on config creation.
  late final Output<String> createTime;

  /// A description of the mute config.
  late final Output<String?> description;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  late final Output<String> filter;

  /// location Id is provided by organization. If not provided, Use global as default.
  late final Output<String?> location;

  /// Email address of the user who last edited the mute config. This
  /// field is set by the server and will be ignored if provided on
  /// config creation or update.
  late final Output<String> mostRecentEditor;

  /// Unique identifier provided by the client within the parent scope.
  late final Output<String> muteConfigId;

  /// Name of the mute config. Its format is
  /// organizations/{organization}/locations/global/muteConfigs/{configId},
  /// folders/{folder}/locations/global/muteConfigs/{configId},
  /// or projects/{project}/locations/global/muteConfigs/{configId}
  late final Output<String> name;

  /// The organization whose Cloud Security Command Center the Mute
  /// Config lives in.
  late final Output<String> organization;

  /// The type of the mute config.
  late final Output<String> type;

  /// Output only. The most recent time at which the mute config was
  /// updated. This field is set by the server and will be ignored if
  /// provided on config creation or update.
  late final Output<String> updateTime;

  V2OrganizationMuteConfig(
    String name, {
    V2OrganizationMuteConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:securitycenter/v2OrganizationMuteConfig:V2OrganizationMuteConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.filter = registerOutput<String>('filter');
    this.location = registerOutput<String?>('location');
    this.mostRecentEditor = registerOutput<String>('mostRecentEditor');
    this.muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    this.organization = registerOutput<String>('organization');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
