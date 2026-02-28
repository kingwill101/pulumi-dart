import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_subscription_args.dart';
import 'data_exchange_subscription_destination_dataset.dart';
import 'data_exchange_subscription_linked_dataset_map.dart';
import 'data_exchange_subscription_linked_resource.dart';

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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const subscription = new gcp.bigqueryanalyticshub.DataExchange("subscription", {
///     location: "us",
///     dataExchangeId: "my_test_dataexchange",
///     displayName: "my_test_dataexchange",
///     description: "Test Data Exchange",
///     sharingEnvironmentConfig: {
///         dcrExchangeConfig: {},
///     },
/// });
/// const subscriptionDataset = new gcp.bigquery.Dataset("subscription", {
///     datasetId: "listing_src_dataset",
///     friendlyName: "listing_src_dataset",
///     description: "Dataset for Listing",
///     location: "us",
/// });
/// const subscriptionTable = new gcp.bigquery.Table("subscription", {
///     deletionProtection: false,
///     tableId: "listing_src_table",
///     datasetId: subscriptionDataset.datasetId,
///     schema: `[
///   {
///     \\"name\\": \\"name\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"post_abbr\\",
///     \\"type\\": \\"STRING\\",
///     \\"mode\\": \\"NULLABLE\\"
///   },
///   {
///     \\"name\\": \\"date\\",
///     \\"type\\": \\"DATE\\",
///     \\"mode\\": \\"NULLABLE\\"
///   }
/// ]
/// `,
/// });
/// const subscriptionListing = new gcp.bigqueryanalyticshub.Listing("subscription", {
///     location: "us",
///     dataExchangeId: subscription.dataExchangeId,
///     listingId: "my_test_listing",
///     displayName: "my_test_listing",
///     description: "Test Listing",
///     restrictedExportConfig: {
///         enabled: true,
///     },
///     bigqueryDataset: {
///         dataset: subscriptionDataset.id,
///         selectedResources: [{
///             table: subscriptionTable.id,
///         }],
///     },
/// });
/// const subscriptionDataExchangeSubscription = new gcp.bigqueryanalyticshub.DataExchangeSubscription("subscription", {
///     project: subscriptionDataset.project,
///     location: "us",
///     dataExchangeProject: subscription.project,
///     dataExchangeLocation: subscription.location,
///     dataExchangeId: subscription.dataExchangeId,
///     subscriptionId: "my_subscription_id",
///     subscriberContact: "testuser@example.com",
///     destinationDataset: {
///         location: "us",
///         datasetReference: {
///             projectId: subscriptionDataset.project,
///             datasetId: "subscribed_dest_dataset",
///         },
///         friendlyName: "Subscribed Destination Dataset",
///         description: "Destination dataset for subscription",
///         labels: {
///             environment: "development",
///             owner: "team-a",
///         },
///     },
///     refreshPolicy: "ON_READ",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// subscription = gcp.bigqueryanalyticshub.DataExchange("subscription",
///     location="us",
///     data_exchange_id="my_test_dataexchange",
///     display_name="my_test_dataexchange",
///     description="Test Data Exchange",
///     sharing_environment_config={
///         "dcr_exchange_config": {},
///     })
/// subscription_dataset = gcp.bigquery.Dataset("subscription",
///     dataset_id="listing_src_dataset",
///     friendly_name="listing_src_dataset",
///     description="Dataset for Listing",
///     location="us")
/// subscription_table = gcp.bigquery.Table("subscription",
///     deletion_protection=False,
///     table_id="listing_src_table",
///     dataset_id=subscription_dataset.dataset_id,
///     schema="""[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// """)
/// subscription_listing = gcp.bigqueryanalyticshub.Listing("subscription",
///     location="us",
///     data_exchange_id=subscription.data_exchange_id,
///     listing_id="my_test_listing",
///     display_name="my_test_listing",
///     description="Test Listing",
///     restricted_export_config={
///         "enabled": True,
///     },
///     bigquery_dataset={
///         "dataset": subscription_dataset.id,
///         "selected_resources": [{
///             "table": subscription_table.id,
///         }],
///     })
/// subscription_data_exchange_subscription = gcp.bigqueryanalyticshub.DataExchangeSubscription("subscription",
///     project=subscription_dataset.project,
///     location="us",
///     data_exchange_project=subscription.project,
///     data_exchange_location=subscription.location,
///     data_exchange_id=subscription.data_exchange_id,
///     subscription_id="my_subscription_id",
///     subscriber_contact="testuser@example.com",
///     destination_dataset={
///         "location": "us",
///         "dataset_reference": {
///             "project_id": subscription_dataset.project,
///             "dataset_id": "subscribed_dest_dataset",
///         },
///         "friendly_name": "Subscribed Destination Dataset",
///         "description": "Destination dataset for subscription",
///         "labels": {
///             "environment": "development",
///             "owner": "team-a",
///         },
///     },
///     refresh_policy="ON_READ")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var subscription = new Gcp.BigQueryAnalyticsHub.DataExchange("subscription", new()
///     {
///         Location = "us",
///         DataExchangeId = "my_test_dataexchange",
///         DisplayName = "my_test_dataexchange",
///         Description = "Test Data Exchange",
///         SharingEnvironmentConfig = new Gcp.BigQueryAnalyticsHub.Inputs.DataExchangeSharingEnvironmentConfigArgs
///         {
///             DcrExchangeConfig = null,
///         },
///     });
///
///     var subscriptionDataset = new Gcp.BigQuery.Dataset("subscription", new()
///     {
///         DatasetId = "listing_src_dataset",
///         FriendlyName = "listing_src_dataset",
///         Description = "Dataset for Listing",
///         Location = "us",
///     });
///
///     var subscriptionTable = new Gcp.BigQuery.Table("subscription", new()
///     {
///         DeletionProtection = false,
///         TableId = "listing_src_table",
///         DatasetId = subscriptionDataset.DatasetId,
///         Schema = @"[
///   {
///     \""name\"": \""name\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""post_abbr\"",
///     \""type\"": \""STRING\"",
///     \""mode\"": \""NULLABLE\""
///   },
///   {
///     \""name\"": \""date\"",
///     \""type\"": \""DATE\"",
///     \""mode\"": \""NULLABLE\""
///   }
/// ]
/// ",
///     });
///
///     var subscriptionListing = new Gcp.BigQueryAnalyticsHub.Listing("subscription", new()
///     {
///         Location = "us",
///         DataExchangeId = subscription.DataExchangeId,
///         ListingId = "my_test_listing",
///         DisplayName = "my_test_listing",
///         Description = "Test Listing",
///         RestrictedExportConfig = new Gcp.BigQueryAnalyticsHub.Inputs.ListingRestrictedExportConfigArgs
///         {
///             Enabled = true,
///         },
///         BigqueryDataset = new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetArgs
///         {
///             Dataset = subscriptionDataset.Id,
///             SelectedResources = new[]
///             {
///                 new Gcp.BigQueryAnalyticsHub.Inputs.ListingBigqueryDatasetSelectedResourceArgs
///                 {
///                     Table = subscriptionTable.Id,
///                 },
///             },
///         },
///     });
///
///     var subscriptionDataExchangeSubscription = new Gcp.BigQueryAnalyticsHub.DataExchangeSubscription("subscription", new()
///     {
///         Project = subscriptionDataset.Project,
///         Location = "us",
///         DataExchangeProject = subscription.Project,
///         DataExchangeLocation = subscription.Location,
///         DataExchangeId = subscription.DataExchangeId,
///         SubscriptionId = "my_subscription_id",
///         SubscriberContact = "testuser@example.com",
///         DestinationDataset = new Gcp.BigQueryAnalyticsHub.Inputs.DataExchangeSubscriptionDestinationDatasetArgs
///         {
///             Location = "us",
///             DatasetReference = new Gcp.BigQueryAnalyticsHub.Inputs.DataExchangeSubscriptionDestinationDatasetDatasetReferenceArgs
///             {
///                 ProjectId = subscriptionDataset.Project,
///                 DatasetId = "subscribed_dest_dataset",
///             },
///             FriendlyName = "Subscribed Destination Dataset",
///             Description = "Destination dataset for subscription",
///             Labels =
///             {
///                 { "environment", "development" },
///                 { "owner", "team-a" },
///             },
///         },
///         RefreshPolicy = "ON_READ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigqueryanalyticshub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		subscription, err := bigqueryanalyticshub.NewDataExchange(ctx, "subscription", &bigqueryanalyticshub.DataExchangeArgs{
/// 			Location:       pulumi.String("us"),
/// 			DataExchangeId: pulumi.String("my_test_dataexchange"),
/// 			DisplayName:    pulumi.String("my_test_dataexchange"),
/// 			Description:    pulumi.String("Test Data Exchange"),
/// 			SharingEnvironmentConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigArgs{
/// 				DcrExchangeConfig: &bigqueryanalyticshub.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subscriptionDataset, err := bigquery.NewDataset(ctx, "subscription", &bigquery.DatasetArgs{
/// 			DatasetId:    pulumi.String("listing_src_dataset"),
/// 			FriendlyName: pulumi.String("listing_src_dataset"),
/// 			Description:  pulumi.String("Dataset for Listing"),
/// 			Location:     pulumi.String("us"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		subscriptionTable, err := bigquery.NewTable(ctx, "subscription", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			TableId:            pulumi.String("listing_src_table"),
/// 			DatasetId:          subscriptionDataset.DatasetId,
/// 			Schema: pulumi.String(`[
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewListing(ctx, "subscription", &bigqueryanalyticshub.ListingArgs{
/// 			Location:       pulumi.String("us"),
/// 			DataExchangeId: subscription.DataExchangeId,
/// 			ListingId:      pulumi.String("my_test_listing"),
/// 			DisplayName:    pulumi.String("my_test_listing"),
/// 			Description:    pulumi.String("Test Listing"),
/// 			RestrictedExportConfig: &bigqueryanalyticshub.ListingRestrictedExportConfigArgs{
/// 				Enabled: pulumi.Bool(true),
/// 			},
/// 			BigqueryDataset: &bigqueryanalyticshub.ListingBigqueryDatasetArgs{
/// 				Dataset: subscriptionDataset.ID(),
/// 				SelectedResources: bigqueryanalyticshub.ListingBigqueryDatasetSelectedResourceArray{
/// 					&bigqueryanalyticshub.ListingBigqueryDatasetSelectedResourceArgs{
/// 						Table: subscriptionTable.ID(),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bigqueryanalyticshub.NewDataExchangeSubscription(ctx, "subscription", &bigqueryanalyticshub.DataExchangeSubscriptionArgs{
/// 			Project:              subscriptionDataset.Project,
/// 			Location:             pulumi.String("us"),
/// 			DataExchangeProject:  subscription.Project,
/// 			DataExchangeLocation: subscription.Location,
/// 			DataExchangeId:       subscription.DataExchangeId,
/// 			SubscriptionId:       pulumi.String("my_subscription_id"),
/// 			SubscriberContact:    pulumi.String("testuser@example.com"),
/// 			DestinationDataset: &bigqueryanalyticshub.DataExchangeSubscriptionDestinationDatasetArgs{
/// 				Location: pulumi.String("us"),
/// 				DatasetReference: &bigqueryanalyticshub.DataExchangeSubscriptionDestinationDatasetDatasetReferenceArgs{
/// 					ProjectId: subscriptionDataset.Project,
/// 					DatasetId: pulumi.String("subscribed_dest_dataset"),
/// 				},
/// 				FriendlyName: pulumi.String("Subscribed Destination Dataset"),
/// 				Description:  pulumi.String("Destination dataset for subscription"),
/// 				Labels: pulumi.StringMap{
/// 					"environment": pulumi.String("development"),
/// 					"owner":       pulumi.String("team-a"),
/// 				},
/// 			},
/// 			RefreshPolicy: pulumi.String("ON_READ"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchange;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs;
/// import com.pulumi.gcp.bigquery.Dataset;
/// import com.pulumi.gcp.bigquery.DatasetArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.Listing;
/// import com.pulumi.gcp.bigqueryanalyticshub.ListingArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingRestrictedExportConfigArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.ListingBigqueryDatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeSubscription;
/// import com.pulumi.gcp.bigqueryanalyticshub.DataExchangeSubscriptionArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSubscriptionDestinationDatasetArgs;
/// import com.pulumi.gcp.bigqueryanalyticshub.inputs.DataExchangeSubscriptionDestinationDatasetDatasetReferenceArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var subscription = new DataExchange("subscription", DataExchangeArgs.builder()
///             .location("us")
///             .dataExchangeId("my_test_dataexchange")
///             .displayName("my_test_dataexchange")
///             .description("Test Data Exchange")
///             .sharingEnvironmentConfig(DataExchangeSharingEnvironmentConfigArgs.builder()
///                 .dcrExchangeConfig(DataExchangeSharingEnvironmentConfigDcrExchangeConfigArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var subscriptionDataset = new Dataset("subscriptionDataset", DatasetArgs.builder()
///             .datasetId("listing_src_dataset")
///             .friendlyName("listing_src_dataset")
///             .description("Dataset for Listing")
///             .location("us")
///             .build());
///
///         var subscriptionTable = new Table("subscriptionTable", TableArgs.builder()
///             .deletionProtection(false)
///             .tableId("listing_src_table")
///             .datasetId(subscriptionDataset.datasetId())
///             .schema("""
/// [
///   {
///     \"name\": \"name\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"post_abbr\",
///     \"type\": \"STRING\",
///     \"mode\": \"NULLABLE\"
///   },
///   {
///     \"name\": \"date\",
///     \"type\": \"DATE\",
///     \"mode\": \"NULLABLE\"
///   }
/// ]
///             """)
///             .build());
///
///         var subscriptionListing = new Listing("subscriptionListing", ListingArgs.builder()
///             .location("us")
///             .dataExchangeId(subscription.dataExchangeId())
///             .listingId("my_test_listing")
///             .displayName("my_test_listing")
///             .description("Test Listing")
///             .restrictedExportConfig(ListingRestrictedExportConfigArgs.builder()
///                 .enabled(true)
///                 .build())
///             .bigqueryDataset(ListingBigqueryDatasetArgs.builder()
///                 .dataset(subscriptionDataset.id())
///                 .selectedResources(ListingBigqueryDatasetSelectedResourceArgs.builder()
///                     .table(subscriptionTable.id())
///                     .build())
///                 .build())
///             .build());
///
///         var subscriptionDataExchangeSubscription = new DataExchangeSubscription("subscriptionDataExchangeSubscription", DataExchangeSubscriptionArgs.builder()
///             .project(subscriptionDataset.project())
///             .location("us")
///             .dataExchangeProject(subscription.project())
///             .dataExchangeLocation(subscription.location())
///             .dataExchangeId(subscription.dataExchangeId())
///             .subscriptionId("my_subscription_id")
///             .subscriberContact("testuser@example.com")
///             .destinationDataset(DataExchangeSubscriptionDestinationDatasetArgs.builder()
///                 .location("us")
///                 .datasetReference(DataExchangeSubscriptionDestinationDatasetDatasetReferenceArgs.builder()
///                     .projectId(subscriptionDataset.project())
///                     .datasetId("subscribed_dest_dataset")
///                     .build())
///                 .friendlyName("Subscribed Destination Dataset")
///                 .description("Destination dataset for subscription")
///                 .labels(Map.ofEntries(
///                     Map.entry("environment", "development"),
///                     Map.entry("owner", "team-a")
///                 ))
///                 .build())
///             .refreshPolicy("ON_READ")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   subscription:
///     type: gcp:bigqueryanalyticshub:DataExchange
///     properties:
///       location: us
///       dataExchangeId: my_test_dataexchange
///       displayName: my_test_dataexchange
///       description: Test Data Exchange
///       sharingEnvironmentConfig:
///         dcrExchangeConfig: {}
///   subscriptionDataset:
///     type: gcp:bigquery:Dataset
///     name: subscription
///     properties:
///       datasetId: listing_src_dataset
///       friendlyName: listing_src_dataset
///       description: Dataset for Listing
///       location: us
///   subscriptionTable:
///     type: gcp:bigquery:Table
///     name: subscription
///     properties:
///       deletionProtection: false
///       tableId: listing_src_table
///       datasetId: ${subscriptionDataset.datasetId}
///       schema: |
///         [
///           {
///             \"name\": \"name\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\"
///           },
///           {
///             \"name\": \"post_abbr\",
///             \"type\": \"STRING\",
///             \"mode\": \"NULLABLE\"
///           },
///           {
///             \"name\": \"date\",
///             \"type\": \"DATE\",
///             \"mode\": \"NULLABLE\"
///           }
///         ]
///   subscriptionListing:
///     type: gcp:bigqueryanalyticshub:Listing
///     name: subscription
///     properties:
///       location: us
///       dataExchangeId: ${subscription.dataExchangeId}
///       listingId: my_test_listing
///       displayName: my_test_listing
///       description: Test Listing
///       restrictedExportConfig:
///         enabled: true
///       bigqueryDataset:
///         dataset: ${subscriptionDataset.id}
///         selectedResources:
///           - table: ${subscriptionTable.id}
///   subscriptionDataExchangeSubscription:
///     type: gcp:bigqueryanalyticshub:DataExchangeSubscription
///     name: subscription
///     properties:
///       project: ${subscriptionDataset.project}
///       location: us
///       dataExchangeProject: ${subscription.project}
///       dataExchangeLocation: ${subscription.location}
///       dataExchangeId: ${subscription.dataExchangeId}
///       subscriptionId: my_subscription_id
///       subscriberContact: testuser@example.com
///       destinationDataset:
///         location: us
///         datasetReference:
///           projectId: ${subscriptionDataset.project}
///           datasetId: subscribed_dest_dataset
///         friendlyName: Subscribed Destination Dataset
///         description: Destination dataset for subscription
///         labels:
///           environment: development
///           owner: team-a
///       refreshPolicy: ON_READ
/// ```
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
class DataExchangeSubscription extends pulumi.CustomResource {
  /// Timestamp when the subscription was created.
  late final pulumi.Output<String> creationTime;

  /// Output only. Resource name of the source Data Exchange. e.g. projects/123/locations/us/dataExchanges/456
  late final pulumi.Output<String> dataExchange;

  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  late final pulumi.Output<String> dataExchangeId;

  /// The name of the location of the Data Exchange.
  late final pulumi.Output<String> dataExchangeLocation;

  /// The ID of the Google Cloud project where the Data Exchange is located.
  late final pulumi.Output<String> dataExchangeProject;

  /// BigQuery destination dataset to create for the subscriber.
  /// Structure is documented below.
  late final pulumi.Output<DataExchangeSubscriptionDestinationDataset?>
      destinationDataset;

  /// Timestamp when the subscription was last modified.
  late final pulumi.Output<String> lastModifyTime;

  /// Output only. Map of listing resource names to associated linked resource,
  /// e.g. projects/123/locations/us/dataExchanges/456/listings/789 > projects/123/datasets/my_dataset
  /// For Data Exchange subscriptions, this map may contain multiple entries if the Data Exchange has multiple listings.
  /// Structure is documented below.
  late final pulumi.Output<List<DataExchangeSubscriptionLinkedDatasetMap>>
      linkedDatasetMaps;

  /// Output only. Linked resources created in the subscription. Only contains values if state = STATE_ACTIVE.
  /// Structure is documented below.
  late final pulumi.Output<List<DataExchangeSubscriptionLinkedResource>>
      linkedResources;

  /// The geographic location where the Subscription (and its linked dataset) should reside.
  /// This is the subscriber's desired location for the created resources.
  /// See https://cloud.google.com/bigquery/docs/locations for supported locations.
  late final pulumi.Output<String> location;

  /// Output only. By default, false. If true, the Subscriber agreed to the email sharing mandate that is enabled for DataExchange/Listing.
  late final pulumi.Output<bool> logLinkedDatasetQueryUserEmail;

  /// The resource name of the subscription. e.g. "projects/myproject/locations/us/subscriptions/123"
  late final pulumi.Output<String> name;

  /// Display name of the project of this subscription.
  late final pulumi.Output<String> organizationDisplayName;

  /// Organization of the project this subscription belongs to.
  late final pulumi.Output<String> organizationId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  late final pulumi.Output<String?> refreshPolicy;

  /// Listing shared asset type.
  late final pulumi.Output<String> resourceType;

  /// Current state of the subscription.
  late final pulumi.Output<String> state;

  /// Email of the subscriber.
  late final pulumi.Output<String?> subscriberContact;

  /// Name of the subscription to create.
  late final pulumi.Output<String> subscriptionId;

  /// Creates a new [DataExchangeSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DataExchangeSubscription]. {@macro pulumi_bigqueryanalyticshub_data_exchange_subscription_data_exchange_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DataExchangeSubscription(
    String name, {
    DataExchangeSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:bigqueryanalyticshub/dataExchangeSubscription:DataExchangeSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
