import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_connector_principal_info/app_connector_principal_info.dart';
import 'app_connector_args.dart';

/// A BeyondCorp AppConnector resource represents an application facing component deployed proximal to
/// and with direct access to the application instances. It is used to establish connectivity between the
/// remote enterprise environment and GCP. It initiates connections to the applications and can proxy the
/// data from users over the connection.
///
///
/// To get more information about AppConnector, see:
///
/// * [API documentation](https://cloud.google.com/beyondcorp/docs/reference/rest#rest-resource:-v1.projects.locations.appconnectors)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/beyondcorp-enterprise/docs/enable-app-connector)
///
/// ## Example Usage
///
/// ### Beyondcorp App Connector Basic
///
///
///
/// ### Beyondcorp App Connector Full
///
///
///
///
/// ## Import
///
/// AppConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/appConnectors/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, AppConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default projects/{{project}}/locations/{{region}}/appConnectors/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:beyondcorp/appConnector:AppConnector default {{name}}
/// ```
class AppConnector extends pulumi.CustomResource {
  /// An arbitrary user-provided name for the AppConnector.
  late final pulumi.Output<String?> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// ID of the AppConnector.
  late final pulumi.Output<String> name;

  /// Principal information about the Identity of the AppConnector.
  /// Structure is documented below.
  late final pulumi.Output<AppConnectorPrincipalInfo> principalInfo;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The region of the AppConnector.
  late final pulumi.Output<String?> region;

  /// Represents the different states of a AppConnector.
  late final pulumi.Output<String> state;

  AppConnector(
    String name, {
    AppConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:beyondcorp/appConnector:AppConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.principalInfo =
        registerOutput<AppConnectorPrincipalInfo>('principalInfo');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.state = registerOutput<String>('state');
  }
}
