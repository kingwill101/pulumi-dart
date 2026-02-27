import 'package:pulumi/pulumi.dart';
import '../service_network_settings_network_settings/service_network_settings_network_settings.dart';
import 'service_network_settings_args.dart';

/// A NetworkSettings resource is a container for ingress settings for a version or service.
///
///
/// To get more information about ServiceNetworkSettings, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services)
///
/// ## Example Usage
///
/// ### App Engine Service Network Settings
///
///
///
///
/// ## Import
///
/// ServiceNetworkSettings can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/services/{{service}}`
///
/// * `{{project}}/{{service}}`
///
/// * `{{service}}`
///
/// When using the `pulumi import` command, ServiceNetworkSettings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/serviceNetworkSettings:ServiceNetworkSettings default apps/{{project}}/services/{{service}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/serviceNetworkSettings:ServiceNetworkSettings default {{project}}/{{service}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/serviceNetworkSettings:ServiceNetworkSettings default {{service}}
/// ```
class ServiceNetworkSettings extends CustomResource {
  /// Ingress settings for this service. Will apply to all versions.
  /// Structure is documented below.
  late final Output<ServiceNetworkSettingsNetworkSettings> networkSettings;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The name of the service these settings apply to.
  late final Output<String> service;

  ServiceNetworkSettings(
    String name, {
    ServiceNetworkSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:appengine/serviceNetworkSettings:ServiceNetworkSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.networkSettings =
        registerOutput<ServiceNetworkSettingsNetworkSettings>(
            'networkSettings');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }
}
