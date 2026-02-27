import 'package:pulumi/pulumi.dart' as pulumi;
import '../widget_config_access_settings/widget_config_access_settings.dart';
import '../widget_config_homepage_setting/widget_config_homepage_setting.dart';
import '../widget_config_ui_branding/widget_config_ui_branding.dart';
import '../widget_config_ui_settings/widget_config_ui_settings.dart';
import 'widget_config_args.dart';

/// Represents a WidgetConfig.
///
///
/// To get more information about WidgetConfig, see:
///
/// * [API documentation](https://cloud.google.com/gemini/enterprise/docs/reference/rest/v1alpha/projects.locations.collections.engines.widgetConfigs)
///
/// ## Example Usage
///
/// ### Discoveryengine Widgetconfig Basic
///
///
///
///
/// ## Import
///
/// WidgetConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/widgetConfigs/{{widget_config_id}}`
///
/// * `{{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{widget_config_id}}`
///
/// * `{{location}}/{{collection_id}}/{{engine_id}}/{{widget_config_id}}`
///
/// When using the `pulumi import` command, WidgetConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/widgetConfig:WidgetConfig default projects/{{project}}/locations/{{location}}/collections/{{collection_id}}/engines/{{engine_id}}/widgetConfigs/{{widget_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/widgetConfig:WidgetConfig default {{project}}/{{location}}/{{collection_id}}/{{engine_id}}/{{widget_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:discoveryengine/widgetConfig:WidgetConfig default {{location}}/{{collection_id}}/{{engine_id}}/{{widget_config_id}}
/// ```
class WidgetConfig extends pulumi.CustomResource {
  /// Describes widget access settings.
  /// Structure is documented below.
  late final pulumi.Output<WidgetConfigAccessSettings> accessSettings;

  /// The collection ID.
  late final pulumi.Output<String?> collectionId;

  /// The engine ID.
  late final pulumi.Output<String> engineId;

  /// Describes the homepage setting of the widget. It includes all homepage related settings
  /// and configurations, such as shortcuts.
  /// Structure is documented below.
  late final pulumi.Output<WidgetConfigHomepageSetting?> homepageSetting;

  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  late final pulumi.Output<String> location;

  /// The full resource name of the widget config. Format:
  /// `projects/{project}/locations/{location}/collections/{collection_id}/engines/{engine_id}/widgetConfigs/{widget_config_id}`.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Describes search widget UI branding settings, such as the widget title, logo,
  /// favicons, and colors.
  /// Structure is documented below.
  late final pulumi.Output<WidgetConfigUiBranding?> uiBranding;

  /// Describes general widget (or web app) UI settings as seen in the cloud console UI configuration page.
  /// Structure is documented below.
  late final pulumi.Output<WidgetConfigUiSettings> uiSettings;

  /// The unique ID to use for the WidgetConfig. Currently only accepts "default_search_widget_config".
  late final pulumi.Output<String?> widgetConfigId;

  WidgetConfig(
    String name, {
    WidgetConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:discoveryengine/widgetConfig:WidgetConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessSettings =
        registerOutput<WidgetConfigAccessSettings>('accessSettings');
    this.collectionId = registerOutput<String?>('collectionId');
    this.engineId = registerOutput<String>('engineId');
    this.homepageSetting =
        registerOutput<WidgetConfigHomepageSetting?>('homepageSetting');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.uiBranding = registerOutput<WidgetConfigUiBranding?>('uiBranding');
    this.uiSettings = registerOutput<WidgetConfigUiSettings>('uiSettings');
    this.widgetConfigId = registerOutput<String?>('widgetConfigId');
  }
}
