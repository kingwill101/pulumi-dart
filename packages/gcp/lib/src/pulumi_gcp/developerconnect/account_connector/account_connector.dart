import 'package:pulumi/pulumi.dart' as pulumi;
import '../account_connector_provider_oauth_config/account_connector_provider_oauth_config.dart';
import 'account_connector_args.dart';

/// Description
///
///
///
/// ## Example Usage
///
/// ### Developer Connect Account Connector Github
///
///
///
/// ### Developer Connect Account Connector Gitlab
///
///
///
/// ### Developer Connect Account Connector Google
///
///
///
/// ### Developer Connect Account Connector Sentry
///
///
///
/// ### Developer Connect Account Connector Rovo
///
///
///
/// ### Developer Connect Account Connector New Relic
///
///
///
/// ### Developer Connect Account Connector Datastax
///
///
///
///
/// ## Import
///
/// AccountConnector can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/accountConnectors/{{account_connector_id}}`
///
/// * `{{project}}/{{location}}/{{account_connector_id}}`
///
/// * `{{location}}/{{account_connector_id}}`
///
/// When using the `pulumi import` command, AccountConnector can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default projects/{{project}}/locations/{{location}}/accountConnectors/{{account_connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default {{project}}/{{location}}/{{account_connector_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:developerconnect/accountConnector:AccountConnector default {{location}}/{{account_connector_id}}
/// ```
class AccountConnector extends pulumi.CustomResource {
  /// Required. The ID to use for the AccountConnector, which will become the final
  /// component of the AccountConnector's resource name. Its format should adhere
  /// to https://google.aip.dev/122#resource-id-segments Names must be unique
  /// per-project per-location.
  late final pulumi.Output<String> accountConnectorId;

  /// Optional. Allows users to store small amounts of arbitrary data.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// Output only. The timestamp when the userConnection was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Optional. Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the resource.
  late final pulumi.Output<String> location;

  /// Identifier. The resource name of the userConnection, in the format
  /// `projects/{project}/locations/{location}/accountConnectors/{account_connector_id}`.
  late final pulumi.Output<String> name;

  /// Output only. Start OAuth flow by clicking on this URL.
  late final pulumi.Output<String> oauthStartUri;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// ProviderOAuthConfig is the OAuth config for a provider.
  /// Structure is documented below.
  late final pulumi.Output<AccountConnectorProviderOauthConfig?>
      providerOauthConfig;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. The timestamp when the userConnection was updated.
  late final pulumi.Output<String> updateTime;

  AccountConnector(
    String name, {
    AccountConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:developerconnect/accountConnector:AccountConnector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountConnectorId = registerOutput<String>('accountConnectorId');
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.oauthStartUri = registerOutput<String>('oauthStartUri');
    this.project = registerOutput<String>('project');
    this.providerOauthConfig =
        registerOutput<AccountConnectorProviderOauthConfig?>(
            'providerOauthConfig');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
