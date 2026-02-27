import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_exchange_sharing_environment_config/data_exchange_sharing_environment_config.dart';
import 'data_exchange_args.dart';

/// A Bigquery Analytics Hub data exchange
///
///
/// To get more information about DataExchange, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/analytics-hub/rest/v1/projects.locations.dataExchanges)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/analytics-hub-introduction)
///
/// ## Example Usage
///
/// ### Bigquery Analyticshub Data Exchange Basic
///
///
///
/// ### Bigquery Analyticshub Data Exchange Dcr
///
///
///
/// ### Bigquery Analyticshub Data Exchange Log Linked Dataset Query User
///
///
///
/// ### Bigquery Analyticshub Public Data Exchange
///
///
///
///
/// ## Import
///
/// DataExchange can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}`
///
/// * `{{project}}/{{location}}/{{data_exchange_id}}`
///
/// * `{{location}}/{{data_exchange_id}}`
///
/// * `{{data_exchange_id}}`
///
/// When using the `pulumi import` command, DataExchange can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchange:DataExchange default projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchange:DataExchange default {{project}}/{{location}}/{{data_exchange_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchange:DataExchange default {{location}}/{{data_exchange_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchange:DataExchange default {{data_exchange_id}}
/// ```
class DataExchange extends pulumi.CustomResource {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> dataExchangeId;

  /// Description of the data exchange.
  late final pulumi.Output<String?> description;

  /// Type of discovery on the discovery page for all the listings under this exchange. Cannot be set for a Data Clean Room. Updating this field also updates (overwrites) the discoveryType field for all the listings under this exchange.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  late final pulumi.Output<String> discoveryType;

  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.
  late final pulumi.Output<String> displayName;

  /// Documentation describing the data exchange.
  late final pulumi.Output<String?> documentation;

  /// Base64 encoded image representing the data exchange.
  late final pulumi.Output<String?> icon;

  /// Number of listings contained in the data exchange.
  late final pulumi.Output<int> listingCount;

  /// The name of the location this data exchange.
  late final pulumi.Output<String> location;

  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  late final pulumi.Output<bool?> logLinkedDatasetQueryUserEmail;

  /// The resource name of the data exchange, for example:
  /// "projects/myproject/locations/US/dataExchanges/123"
  late final pulumi.Output<String> name;

  /// Email or URL of the primary point of contact of the data exchange.
  late final pulumi.Output<String?> primaryContact;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Configurable data sharing environment option for a data exchange.
  /// This field is required for data clean room exchanges.
  /// Structure is documented below.
  late final pulumi.Output<DataExchangeSharingEnvironmentConfig>
      sharingEnvironmentConfig;

  DataExchange(
    String name, {
    DataExchangeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/dataExchange:DataExchange',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataExchangeId = registerOutput<String>('dataExchangeId');
    this.description = registerOutput<String?>('description');
    this.discoveryType = registerOutput<String>('discoveryType');
    this.displayName = registerOutput<String>('displayName');
    this.documentation = registerOutput<String?>('documentation');
    this.icon = registerOutput<String?>('icon');
    this.listingCount = registerOutput<int>('listingCount');
    this.location = registerOutput<String>('location');
    this.logLinkedDatasetQueryUserEmail =
        registerOutput<bool?>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    this.primaryContact = registerOutput<String?>('primaryContact');
    this.project = registerOutput<String>('project');
    this.sharingEnvironmentConfig =
        registerOutput<DataExchangeSharingEnvironmentConfig>(
            'sharingEnvironmentConfig');
  }
}
