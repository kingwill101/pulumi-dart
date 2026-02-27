import 'package:pulumi/pulumi.dart' as pulumi;
import '../listing_subscription_commercial_info/listing_subscription_commercial_info.dart';
import '../listing_subscription_destination_dataset/listing_subscription_destination_dataset.dart';
import '../listing_subscription_linked_dataset_map/listing_subscription_linked_dataset_map.dart';
import '../listing_subscription_linked_resource/listing_subscription_linked_resource.dart';
import 'listing_subscription_args.dart';

/// A Bigquery Analytics Hub listing subscription
///
///
/// To get more information about ListingSubscription, see:
///
/// * [API documentation](https://cloud.google.com/bigquery/docs/reference/analytics-hub/rest/v1/projects.locations.subscriptions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/bigquery/docs/analytics-hub-introduction)
///
/// > **Note:** When importing the resource with `pulumi import`, provide the destination project and location
/// in the format projects/{{destination_project}}/locations/{{destination_location}}/subscriptions/{{subscription_id}}
/// ## Example Usage
///
/// ### Bigquery Analyticshub Listing Subscription Basic
///
///
///
/// ### Bigquery Analyticshub Listing Subscription Multiregion
///
///
///
///
/// ## Import
///
/// ListingSubscription can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/subscriptions/{{subscription_id}}`
///
/// * `{{project}}/{{location}}/{{subscription_id}}`
///
/// * `{{location}}/{{subscription_id}}`
///
/// When using the `pulumi import` command, ListingSubscription can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription default projects/{{project}}/locations/{{location}}/subscriptions/{{subscription_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription default {{project}}/{{location}}/{{subscription_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription default {{location}}/{{subscription_id}}
/// ```
class ListingSubscription extends pulumi.CustomResource {
  /// Commercial info metadata for this subscription. This is set if this is a commercial subscription i.e. if this subscription was created from subscribing to a commercial listing.
  /// Structure is documented below.
  late final pulumi.Output<List<ListingSubscriptionCommercialInfo>>
      commercialInfos;

  /// Timestamp when the subscription was created.
  late final pulumi.Output<String> creationTime;

  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> dataExchangeId;

  /// The destination dataset for this subscription.
  /// Structure is documented below.
  late final pulumi.Output<ListingSubscriptionDestinationDataset>
      destinationDataset;

  /// Timestamp when the subscription was last modified.
  late final pulumi.Output<String> lastModifyTime;

  /// Output only. Map of listing resource names to associated linked resource,
  /// e.g. projects/123/locations/US/dataExchanges/456/listings/789 > projects/123/datasets/my_dataset
  /// Structure is documented below.
  late final pulumi.Output<List<ListingSubscriptionLinkedDatasetMap>>
      linkedDatasetMaps;

  /// Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// Structure is documented below.
  late final pulumi.Output<List<ListingSubscriptionLinkedResource>>
      linkedResources;

  /// The ID of the listing. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> listingId;

  /// The name of the location of the data exchange. Distinct from the location of the destination data set.
  late final pulumi.Output<String> location;

  /// Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for Listing.
  late final pulumi.Output<bool> logLinkedDatasetQueryUserEmail;

  /// The resource name of the subscription. e.g. "projects/myproject/locations/US/subscriptions/123"
  late final pulumi.Output<String> name;

  /// Display name of the project of this subscription.
  late final pulumi.Output<String> organizationDisplayName;

  /// Organization of the project this subscription belongs to.
  late final pulumi.Output<String> organizationId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Listing shared asset type.
  late final pulumi.Output<String> resourceType;

  /// Current state of the subscription.
  late final pulumi.Output<String> state;

  /// Email of the subscriber.
  late final pulumi.Output<String> subscriberContact;

  /// The subscription id used to reference the subscription.
  late final pulumi.Output<String> subscriptionId;

  ListingSubscription(
    String name, {
    ListingSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/listingSubscription:ListingSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.commercialInfos =
        registerOutput<List<ListingSubscriptionCommercialInfo>>(
            'commercialInfos');
    this.creationTime = registerOutput<String>('creationTime');
    this.dataExchangeId = registerOutput<String>('dataExchangeId');
    this.destinationDataset =
        registerOutput<ListingSubscriptionDestinationDataset>(
            'destinationDataset');
    this.lastModifyTime = registerOutput<String>('lastModifyTime');
    this.linkedDatasetMaps =
        registerOutput<List<ListingSubscriptionLinkedDatasetMap>>(
            'linkedDatasetMaps');
    this.linkedResources =
        registerOutput<List<ListingSubscriptionLinkedResource>>(
            'linkedResources');
    this.listingId = registerOutput<String>('listingId');
    this.location = registerOutput<String>('location');
    this.logLinkedDatasetQueryUserEmail =
        registerOutput<bool>('logLinkedDatasetQueryUserEmail');
    this.name = registerOutput<String>('name');
    this.organizationDisplayName =
        registerOutput<String>('organizationDisplayName');
    this.organizationId = registerOutput<String>('organizationId');
    this.project = registerOutput<String>('project');
    this.resourceType = registerOutput<String>('resourceType');
    this.state = registerOutput<String>('state');
    this.subscriberContact = registerOutput<String>('subscriberContact');
    this.subscriptionId = registerOutput<String>('subscriptionId');
  }
}
