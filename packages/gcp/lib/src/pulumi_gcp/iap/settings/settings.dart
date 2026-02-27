import 'package:pulumi/pulumi.dart' as pulumi;
import '../settings_access_settings/settings_access_settings.dart';
import '../settings_application_settings/settings_application_settings.dart';
import 'settings_args.dart';

/// IAP settings - manage IAP settings
///
///
/// To get more information about Settings, see:
///
/// * [API documentation](https://cloud.google.com/iap/docs/reference/rest/v1/IapSettings)
/// * How-to Guides
/// * [Customizing IAP](https://cloud.google.com/iap/docs/customizing)
///
///
///
/// ## Example Usage
///
/// ### Iap Settings Basic
///
///
///
///
/// ## Import
///
/// Settings can be imported using any of these accepted formats:
///
/// * `{{name}}/iapSettings`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Settings can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iap/settings:Settings default {{name}}/iapSettings
/// ```
///
/// ```sh
/// $ pulumi import gcp:iap/settings:Settings default {{name}}
/// ```
class Settings extends pulumi.CustomResource {
  /// Top level wrapper for all access related setting in IAP.
  /// Structure is documented below.
  late final pulumi.Output<SettingsAccessSettings?> accessSettings;

  /// Top level wrapper for all application related settings in IAP.
  /// Structure is documented below.
  late final pulumi.Output<SettingsApplicationSettings?> applicationSettings;

  /// The resource name of the IAP protected resource. Name can have below resources:
  /// * organizations/{organization_id}
  /// * folders/{folder_id}
  /// * projects/{project_id}
  /// * projects/{project_id}/iap_web
  /// * projects/{project_id}/iap_web/compute
  /// * projects/{project_id}/iap_web/compute-{region}
  /// * projects/{project_id}/iap_web/compute/services/{service_id}
  /// * projects/{project_id}/iap_web/compute-{region}/services/{service_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}/services/{service_id}
  /// * projects/{project_id}/iap_web/appengine-{app_id}/services/{service_id}/version/{version_id}
  late final pulumi.Output<String> name;

  Settings(
    String name, {
    SettingsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iap/settings:Settings',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessSettings =
        registerOutput<SettingsAccessSettings?>('accessSettings');
    this.applicationSettings =
        registerOutput<SettingsApplicationSettings?>('applicationSettings');
    this.name = registerOutput<String>('name');
  }
}
