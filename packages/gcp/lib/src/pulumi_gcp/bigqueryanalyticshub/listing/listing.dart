import 'package:pulumi/pulumi.dart' as pulumi;
import '../listing_bigquery_dataset/listing_bigquery_dataset.dart';
import '../listing_commercial_info/listing_commercial_info.dart';
import '../listing_data_provider/listing_data_provider.dart';
import '../listing_publisher/listing_publisher.dart';
import '../listing_pubsub_topic/listing_pubsub_topic.dart';
import '../listing_restricted_export_config/listing_restricted_export_config.dart';
import 'listing_args.dart';

/// A Bigquery Analytics Hub data exchange listing
///
///
/// To get more information about Listing, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/analytics-hub/rest/v1/projects.locations.dataExchanges.listings)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/analytics-hub-introduction)
///
/// ## Example Usage
///
/// ### Bigquery Analyticshub Listing Basic
///
///
///
/// ### Bigquery Analyticshub Listing Restricted
///
///
///
/// ### Bigquery Analyticshub Listing Dcr
///
///
///
/// ### Bigquery Analyticshub Listing Log Linked Dataset Query User
///
///
///
/// ### Bigquery Analyticshub Listing Pubsub
///
///
///
/// ### Bigquery Analyticshub Listing Dcr Routine
///
///
///
/// ### Bigquery Analyticshub Public Listing
///
///
///
/// ### Bigquery Analyticshub Listing Marketplace
///
///
///
/// ### Bigquery Analyticshub Listing Multiregion
///
///
///
///
/// ## Import
///
/// Listing can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}}`
///
/// * `{{project}}/{{location}}/{{data_exchange_id}}/{{listing_id}}`
///
/// * `{{location}}/{{data_exchange_id}}/{{listing_id}}`
///
/// When using the `pulumi import` command, Listing can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listing:Listing default projects/{{project}}/locations/{{location}}/dataExchanges/{{data_exchange_id}}/listings/{{listing_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listing:Listing default {{project}}/{{location}}/{{data_exchange_id}}/{{listing_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listing:Listing default {{location}}/{{data_exchange_id}}/{{listing_id}}
/// ```
class Listing extends pulumi.CustomResource {
  /// If true, the listing is only available to get the resource metadata. Listing is non subscribable.
  late final pulumi.Output<bool?> allowOnlyMetadataSharing;

  /// Shared dataset i.e. BigQuery dataset source.
  /// Structure is documented below.
  late final pulumi.Output<ListingBigqueryDataset?> bigqueryDataset;

  /// Categories of the listing. Up to two categories are allowed.
  late final pulumi.Output<List<String>?> categories;

  /// Commercial info contains the information about the commercial data products associated with the listing.
  /// Structure is documented below.
  late final pulumi.Output<List<ListingCommercialInfo>> commercialInfos;

  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> dataExchangeId;

  /// Details of the data provider who owns the source data.
  /// Structure is documented below.
  late final pulumi.Output<ListingDataProvider?> dataProvider;

  /// If the listing is commercial then this field must be set to true, otherwise a failure is thrown. This acts as a safety guard to avoid deleting commercial listings accidentally.
  late final pulumi.Output<bool?> deleteCommercial;

  /// Short description of the listing. The description must not contain Unicode non-characters and C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF).
  late final pulumi.Output<String?> description;

  /// Specifies the type of discovery on the discovery page. Cannot be set for a restricted listing. Note that this does not control the visibility of the exchange/listing which is defined by IAM permission.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  late final pulumi.Output<String> discoveryType;

  /// Human-readable display name of the listing. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and can't start or end with spaces.
  late final pulumi.Output<String> displayName;

  /// Documentation describing the listing.
  late final pulumi.Output<String?> documentation;

  /// Base64 encoded image representing the listing.
  late final pulumi.Output<String?> icon;

  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> listingId;

  /// The name of the location this data exchange listing.
  late final pulumi.Output<String> location;

  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  late final pulumi.Output<bool?> logLinkedDatasetQueryUserEmail;

  /// The resource name of the listing. e.g. "projects/myproject/locations/US/dataExchanges/123/listings/456"
  late final pulumi.Output<String> name;

  /// Email or URL of the primary point of contact of the listing.
  late final pulumi.Output<String?> primaryContact;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Details of the publisher who owns the listing and who can share the source data.
  /// Structure is documented below.
  late final pulumi.Output<ListingPublisher?> publisher;

  /// Pub/Sub topic source.
  /// Structure is documented below.
  late final pulumi.Output<ListingPubsubTopic?> pubsubTopic;

  /// Email or URL of the request access of the listing. Subscribers can use this reference to request access.
  late final pulumi.Output<String?> requestAccess;

  /// If set, restricted export configuration will be propagated and enforced on the linked dataset.
  /// Structure is documented below.
  late final pulumi.Output<ListingRestrictedExportConfig?>
      restrictedExportConfig;

  /// Current state of the listing.
  late final pulumi.Output<String> state;

  Listing(
    String name, {
    ListingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/listing:Listing',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowOnlyMetadataSharing =
        registerOutput<bool?>('allowOnlyMetadataSharing');
    this.bigqueryDataset =
        registerOutput<ListingBigqueryDataset?>('bigqueryDataset');
    this.categories = registerOutput<List<String>?>('categories');
    this.commercialInfos =
        registerOutput<List<ListingCommercialInfo>>('commercialInfos');
    this.dataExchangeId = registerOutput<String>('dataExchangeId');
    this.dataProvider = registerOutput<ListingDataProvider?>('dataProvider');
    this.deleteCommercial = registerOutput<bool?>('deleteCommercial');
    this.description = registerOutput<String?>('description');
    this.discoveryType = registerOutput<String>('discoveryType');
    this.displayName = registerOutput<String>('displayName');
    this.documentation = registerOutput<String?>('documentation');
    this.icon = registerOutput<String?>('icon');
    this.listingId = registerOutput<String>('listingId');
    this.location = registerOutput<String>('location');
    this.logLinkedDatasetQueryUserEmail =
        registerOutput<bool?>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    this.primaryContact = registerOutput<String?>('primaryContact');
    this.project = registerOutput<String>('project');
    this.publisher = registerOutput<ListingPublisher?>('publisher');
    this.pubsubTopic = registerOutput<ListingPubsubTopic?>('pubsubTopic');
    this.requestAccess = registerOutput<String?>('requestAccess');
    this.restrictedExportConfig =
        registerOutput<ListingRestrictedExportConfig?>(
            'restrictedExportConfig');
    this.state = registerOutput<String>('state');
  }
}
