import 'package:pulumi/pulumi.dart';
import '../data_exchange_subscription_destination_dataset/data_exchange_subscription_destination_dataset.dart';
import '../data_exchange_subscription_linked_dataset_map/data_exchange_subscription_linked_dataset_map.dart';
import '../data_exchange_subscription_linked_resource/data_exchange_subscription_linked_resource.dart';
import 'data_exchange_subscription_args.dart';

/// A Bigquery Analytics Hub Data Exchange subscription
///
/// To get more information about DataExchangeSubscription, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/analytics-hub/rest/v1/projects.locations.subscriptions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/analytics-hub-introduction)
///
/// > **Note:** When importing the resource with `pulumi import`, provide the destination/subscriber's project and location
/// in the format projects/{{subscriber_project}}/locations/{{subscriber_location}}/subscriptions/{{subscription_id}}
/// ## Example Usage
///
/// ### Bigquery Analyticshub Dataexchange Subscription Basic
///
///
///
///
/// ## Import
///
/// DataExchangeSubscription can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/subscriptions/{{subscription_id}}`
///
/// * `{{project}}/{{location}}/{{subscription_id}}`
///
/// * `{{location}}/{{subscription_id}}`
///
/// When using the `pulumi import` command, DataExchangeSubscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchangeSubscription:DataExchangeSubscription default projects/{{project}}/locations/{{location}}/subscriptions/{{subscription_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchangeSubscription:DataExchangeSubscription default {{project}}/{{location}}/{{subscription_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/dataExchangeSubscription:DataExchangeSubscription default {{location}}/{{subscription_id}}
/// ```
class DataExchangeSubscription extends CustomResource {
  /// Timestamp when the subscription was created.
  late final Output<String> creationTime;

  /// Output only. Resource name of the source Data Exchange. e.g. projects/123/locations/us/dataExchanges/456
  late final Output<String> dataExchange;

  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final Output<String> dataExchangeId;

  /// The name of the location of the Data Exchange.
  late final Output<String> dataExchangeLocation;

  /// The ID of the Google Cloud project where the Data Exchange is located.
  late final Output<String> dataExchangeProject;

  /// BigQuery destination dataset to create for the subscriber.
  /// Structure is documented below.
  late final Output<DataExchangeSubscriptionDestinationDataset?>
      destinationDataset;

  /// Timestamp when the subscription was last modified.
  late final Output<String> lastModifyTime;

  /// Output only. Map of listing resource names to associated linked resource,
  /// e.g. projects/123/locations/us/dataExchanges/456/listings/789 > projects/123/datasets/my_dataset
  /// For Data Exchange subscriptions, this map may contain multiple entries if the Data Exchange has multiple listings.
  /// Structure is documented below.
  late final Output<List<DataExchangeSubscriptionLinkedDatasetMap>>
      linkedDatasetMaps;

  /// Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// Structure is documented below.
  late final Output<List<DataExchangeSubscriptionLinkedResource>>
      linkedResources;

  /// The geographic location where the Subscription (and its linked dataset) should reside.
  /// This is the subscriber's desired location for the created resources.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  late final Output<String> location;

  /// Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for DataExchange/Listing.
  late final Output<bool> logLinkedDatasetQueryUserEmail;

  /// The resource name of the subscription. e.g. "projects/myproject/locations/us/subscriptions/123"
  late final Output<String> name;

  /// Display name of the project of this subscription.
  late final Output<String> organizationDisplayName;

  /// Organization of the project this subscription belongs to.
  late final Output<String> organizationId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;
  late final Output<String?> refreshPolicy;

  /// Listing shared asset type.
  late final Output<String> resourceType;

  /// Current state of the subscription.
  late final Output<String> state;

  /// Email of the subscriber.
  late final Output<String?> subscriberContact;

  /// Name of the subscription to create.
  late final Output<String> subscriptionId;

  DataExchangeSubscription(
    String name, {
    DataExchangeSubscriptionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/dataExchangeSubscription:DataExchangeSubscription',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.creationTime = registerOutput<String>('creationTime');
    this.dataExchange = registerOutput<String>('dataExchange');
    this.dataExchangeId = registerOutput<String>('dataExchangeId');
    this.dataExchangeLocation = registerOutput<String>('dataExchangeLocation');
    this.dataExchangeProject = registerOutput<String>('dataExchangeProject');
    this.destinationDataset =
        registerOutput<DataExchangeSubscriptionDestinationDataset?>(
            'destinationDataset');
    this.lastModifyTime = registerOutput<String>('lastModifyTime');
    this.linkedDatasetMaps =
        registerOutput<List<DataExchangeSubscriptionLinkedDatasetMap>>(
            'linkedDatasetMaps');
    this.linkedResources =
        registerOutput<List<DataExchangeSubscriptionLinkedResource>>(
            'linkedResources');
    this.location = registerOutput<String>('location');
    this.logLinkedDatasetQueryUserEmail =
        registerOutput<bool>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    this.organizationDisplayName =
        registerOutput<String>('organizationDisplayName');
    this.organizationId = registerOutput<String>('organizationId');
    this.project = registerOutput<String>('project');
    this.refreshPolicy = registerOutput<String?>('refreshPolicy');
    this.resourceType = registerOutput<String>('resourceType');
    this.state = registerOutput<String>('state');
    this.subscriberContact = registerOutput<String?>('subscriberContact');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}
