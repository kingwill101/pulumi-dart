import 'package:pulumi/pulumi.dart' as pulumi;
import 'dicom_store_args.dart';
import 'dicom_store_notification_config.dart';
import 'dicom_store_stream_config.dart';

/// A DicomStore is a datastore inside a Healthcare dataset that conforms to the DICOM
/// (https://www.dicomstandard.org/about/) standard for Healthcare information exchange
///
///
/// To get more information about DicomStore, see:
///
/// * [API documentation](https://cloud.google.com/healthcare/docs/reference/rest/v1/projects.locations.datasets.dicomStores)
/// * How-to Guides
/// * [Creating a DICOM store](https://cloud.google.com/healthcare/docs/how-tos/dicom)
///
/// ## Example Usage
///
/// ### Healthcare Dicom Store Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "dicom-notifications"});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
///     name: "example-dataset",
///     location: "us-central1",
/// });
/// const _default = new gcp.healthcare.DicomStore("default", {
///     name: "example-dicom-store",
///     dataset: dataset.id,
///     notificationConfig: {
///         pubsubTopic: topic.id,
///     },
///     labels: {
///         label1: "labelvalue1",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// topic = gcp.pubsub.Topic("topic", name="dicom-notifications")
/// dataset = gcp.healthcare.Dataset("dataset",
///     name="example-dataset",
///     location="us-central1")
/// default = gcp.healthcare.DicomStore("default",
///     name="example-dicom-store",
///     dataset=dataset.id,
///     notification_config={
///         "pubsub_topic": topic.id,
///     },
///     labels={
///         "label1": "labelvalue1",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "dicom-notifications",
///     });
///
///     var dataset = new Gcp.Healthcare.Dataset("dataset", new()
///     {
///         Name = "example-dataset",
///         Location = "us-central1",
///     });
///
///     var @default = new Gcp.Healthcare.DicomStore("default", new()
///     {
///         Name = "example-dicom-store",
///         Dataset = dataset.Id,
///         NotificationConfig = new Gcp.Healthcare.Inputs.DicomStoreNotificationConfigArgs
///         {
///             PubsubTopic = topic.Id,
///         },
///         Labels =
///         {
///             { "label1", "labelvalue1" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("dicom-notifications"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example-dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewDicomStore(ctx, "default", &healthcare.DicomStoreArgs{
/// 			Name:    pulumi.String("example-dicom-store"),
/// 			Dataset: dataset.ID(),
/// 			NotificationConfig: &healthcare.DicomStoreNotificationConfigArgs{
/// 				PubsubTopic: topic.ID(),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label1": pulumi.String("labelvalue1"),
/// 			},
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.healthcare.Dataset;
/// import com.pulumi.gcp.healthcare.DatasetArgs;
/// import com.pulumi.gcp.healthcare.DicomStore;
/// import com.pulumi.gcp.healthcare.DicomStoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.DicomStoreNotificationConfigArgs;
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
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("dicom-notifications")
///             .build());
///
///         var dataset = new Dataset("dataset", DatasetArgs.builder()
///             .name("example-dataset")
///             .location("us-central1")
///             .build());
///
///         var default_ = new DicomStore("default", DicomStoreArgs.builder()
///             .name("example-dicom-store")
///             .dataset(dataset.id())
///             .notificationConfig(DicomStoreNotificationConfigArgs.builder()
///                 .pubsubTopic(topic.id())
///                 .build())
///             .labels(Map.of("label1", "labelvalue1"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:healthcare:DicomStore
///     properties:
///       name: example-dicom-store
///       dataset: ${dataset.id}
///       notificationConfig:
///         pubsubTopic: ${topic.id}
///       labels:
///         label1: labelvalue1
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: dicom-notifications
///   dataset:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example-dataset
///       location: us-central1
/// ```
///
/// ### Healthcare Dicom Store Bq Stream
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "dicom-notifications"});
/// const dataset = new gcp.healthcare.Dataset("dataset", {
///     name: "example-dataset",
///     location: "us-central1",
/// });
/// const bqDataset = new gcp.bigquery.Dataset("bq_dataset", {
///     datasetId: "dicom_bq_ds",
///     friendlyName: "test",
///     description: "This is a test description",
///     location: "US",
///     deleteContentsOnDestroy: true,
/// });
/// const bqTable = new gcp.bigquery.Table("bq_table", {
///     deletionProtection: false,
///     datasetId: bqDataset.datasetId,
///     tableId: "dicom_bq_tb",
/// });
/// const _default = new gcp.healthcare.DicomStore("default", {
///     name: "example-dicom-store",
///     dataset: dataset.id,
///     notificationConfig: {
///         pubsubTopic: topic.id,
///         sendForBulkImport: true,
///     },
///     labels: {
///         label1: "labelvalue1",
///     },
///     streamConfigs: [{
///         bigqueryDestination: {
///             tableUri: pulumi.interpolate`bq://${bqDataset.project}.${bqDataset.datasetId}.${bqTable.tableId}`,
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// topic = gcp.pubsub.Topic("topic", name="dicom-notifications")
/// dataset = gcp.healthcare.Dataset("dataset",
///     name="example-dataset",
///     location="us-central1")
/// bq_dataset = gcp.bigquery.Dataset("bq_dataset",
///     dataset_id="dicom_bq_ds",
///     friendly_name="test",
///     description="This is a test description",
///     location="US",
///     delete_contents_on_destroy=True)
/// bq_table = gcp.bigquery.Table("bq_table",
///     deletion_protection=False,
///     dataset_id=bq_dataset.dataset_id,
///     table_id="dicom_bq_tb")
/// default = gcp.healthcare.DicomStore("default",
///     name="example-dicom-store",
///     dataset=dataset.id,
///     notification_config={
///         "pubsub_topic": topic.id,
///         "send_for_bulk_import": True,
///     },
///     labels={
///         "label1": "labelvalue1",
///     },
///     stream_configs=[{
///         "bigquery_destination": {
///             "table_uri": pulumi.Output.all(
///                 project=bq_dataset.project,
///                 dataset_id=bq_dataset.dataset_id,
///                 table_id=bq_table.table_id
/// ).apply(lambda resolved_outputs: f"bq://{resolved_outputs['project']}.{resolved_outputs['dataset_id']}.{resolved_outputs['table_id']}")
/// ,
///         },
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topic = new Gcp.PubSub.Topic("topic", new()
///     {
///         Name = "dicom-notifications",
///     });
///
///     var dataset = new Gcp.Healthcare.Dataset("dataset", new()
///     {
///         Name = "example-dataset",
///         Location = "us-central1",
///     });
///
///     var bqDataset = new Gcp.BigQuery.Dataset("bq_dataset", new()
///     {
///         DatasetId = "dicom_bq_ds",
///         FriendlyName = "test",
///         Description = "This is a test description",
///         Location = "US",
///         DeleteContentsOnDestroy = true,
///     });
///
///     var bqTable = new Gcp.BigQuery.Table("bq_table", new()
///     {
///         DeletionProtection = false,
///         DatasetId = bqDataset.DatasetId,
///         TableId = "dicom_bq_tb",
///     });
///
///     var @default = new Gcp.Healthcare.DicomStore("default", new()
///     {
///         Name = "example-dicom-store",
///         Dataset = dataset.Id,
///         NotificationConfig = new Gcp.Healthcare.Inputs.DicomStoreNotificationConfigArgs
///         {
///             PubsubTopic = topic.Id,
///             SendForBulkImport = true,
///         },
///         Labels =
///         {
///             { "label1", "labelvalue1" },
///         },
///         StreamConfigs = new[]
///         {
///             new Gcp.Healthcare.Inputs.DicomStoreStreamConfigArgs
///             {
///                 BigqueryDestination = new Gcp.Healthcare.Inputs.DicomStoreStreamConfigBigqueryDestinationArgs
///                 {
///                     TableUri = Output.Tuple(bqDataset.Project, bqDataset.DatasetId, bqTable.TableId).Apply(values =>
///                     {
///                         var project = values.Item1;
///                         var datasetId = values.Item2;
///                         var tableId = values.Item3;
///                         return $"bq://{project}.{datasetId}.{tableId}";
///                     }),
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/bigquery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/healthcare"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("dicom-notifications"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		dataset, err := healthcare.NewDataset(ctx, "dataset", &healthcare.DatasetArgs{
/// 			Name:     pulumi.String("example-dataset"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqDataset, err := bigquery.NewDataset(ctx, "bq_dataset", &bigquery.DatasetArgs{
/// 			DatasetId:               pulumi.String("dicom_bq_ds"),
/// 			FriendlyName:            pulumi.String("test"),
/// 			Description:             pulumi.String("This is a test description"),
/// 			Location:                pulumi.String("US"),
/// 			DeleteContentsOnDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bqTable, err := bigquery.NewTable(ctx, "bq_table", &bigquery.TableArgs{
/// 			DeletionProtection: pulumi.Bool(false),
/// 			DatasetId:          bqDataset.DatasetId,
/// 			TableId:            pulumi.String("dicom_bq_tb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = healthcare.NewDicomStore(ctx, "default", &healthcare.DicomStoreArgs{
/// 			Name:    pulumi.String("example-dicom-store"),
/// 			Dataset: dataset.ID(),
/// 			NotificationConfig: &healthcare.DicomStoreNotificationConfigArgs{
/// 				PubsubTopic:       topic.ID(),
/// 				SendForBulkImport: pulumi.Bool(true),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"label1": pulumi.String("labelvalue1"),
/// 			},
/// 			StreamConfigs: healthcare.DicomStoreStreamConfigArray{
/// 				&healthcare.DicomStoreStreamConfigArgs{
/// 					BigqueryDestination: &healthcare.DicomStoreStreamConfigBigqueryDestinationArgs{
/// 						TableUri: pulumi.All(bqDataset.Project, bqDataset.DatasetId, bqTable.TableId).ApplyT(func(_args []interface{}) (string, error) {
/// 							project := _args[0].(string)
/// 							datasetId := _args[1].(string)
/// 							tableId := _args[2].(string)
/// 							return fmt.Sprintf("bq://%v.%v.%v", project, datasetId, tableId), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.pubsub.Topic;
/// import com.pulumi.gcp.pubsub.TopicArgs;
/// import com.pulumi.gcp.bigquery.Table;
/// import com.pulumi.gcp.bigquery.TableArgs;
/// import com.pulumi.gcp.healthcare.DicomStore;
/// import com.pulumi.gcp.healthcare.DicomStoreArgs;
/// import com.pulumi.gcp.healthcare.inputs.DicomStoreNotificationConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.DicomStoreStreamConfigArgs;
/// import com.pulumi.gcp.healthcare.inputs.DicomStoreStreamConfigBigqueryDestinationArgs;
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
///         var topic = new Topic("topic", TopicArgs.builder()
///             .name("dicom-notifications")
///             .build());
///
///         var dataset = new com.pulumi.gcp.healthcare.Dataset("dataset", com.pulumi.gcp.healthcare.DatasetArgs.builder()
///             .name("example-dataset")
///             .location("us-central1")
///             .build());
///
///         var bqDataset = new com.pulumi.gcp.bigquery.Dataset("bqDataset", com.pulumi.gcp.bigquery.DatasetArgs.builder()
///             .datasetId("dicom_bq_ds")
///             .friendlyName("test")
///             .description("This is a test description")
///             .location("US")
///             .deleteContentsOnDestroy(true)
///             .build());
///
///         var bqTable = new Table("bqTable", TableArgs.builder()
///             .deletionProtection(false)
///             .datasetId(bqDataset.datasetId())
///             .tableId("dicom_bq_tb")
///             .build());
///
///         var default_ = new DicomStore("default", DicomStoreArgs.builder()
///             .name("example-dicom-store")
///             .dataset(dataset.id())
///             .notificationConfig(DicomStoreNotificationConfigArgs.builder()
///                 .pubsubTopic(topic.id())
///                 .sendForBulkImport(true)
///                 .build())
///             .labels(Map.of("label1", "labelvalue1"))
///             .streamConfigs(DicomStoreStreamConfigArgs.builder()
///                 .bigqueryDestination(DicomStoreStreamConfigBigqueryDestinationArgs.builder()
///                     .tableUri(Output.tuple(bqDataset.project(), bqDataset.datasetId(), bqTable.tableId()).applyValue(values -> {
///                         var project = values.t1;
///                         var datasetId = values.t2;
///                         var tableId = values.t3;
///                         return String.format("bq://%s.%s.%s", project,datasetId,tableId);
///                     }))
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:healthcare:DicomStore
///     properties:
///       name: example-dicom-store
///       dataset: ${dataset.id}
///       notificationConfig:
///         pubsubTopic: ${topic.id}
///         sendForBulkImport: true
///       labels:
///         label1: labelvalue1
///       streamConfigs:
///         - bigqueryDestination:
///             tableUri: bq://${bqDataset.project}.${bqDataset.datasetId}.${bqTable.tableId}
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: dicom-notifications
///   dataset:
///     type: gcp:healthcare:Dataset
///     properties:
///       name: example-dataset
///       location: us-central1
///   bqDataset:
///     type: gcp:bigquery:Dataset
///     name: bq_dataset
///     properties:
///       datasetId: dicom_bq_ds
///       friendlyName: test
///       description: This is a test description
///       location: US
///       deleteContentsOnDestroy: true
///   bqTable:
///     type: gcp:bigquery:Table
///     name: bq_table
///     properties:
///       deletionProtection: false
///       datasetId: ${bqDataset.datasetId}
///       tableId: dicom_bq_tb
/// ```
///
///
/// ## Import
///
/// DicomStore can be imported using any of these accepted formats:
///
/// * `{{dataset}}/dicomStores/{{name}}`
///
/// * `{{dataset}}/{{name}}`
///
/// When using the `pulumi import` command, DicomStore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:healthcare/dicomStore:DicomStore default {{dataset}}/dicomStores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:healthcare/dicomStore:DicomStore default {{dataset}}/{{name}}
/// ```
class DicomStore extends pulumi.CustomResource {
  /// Identifies the dataset addressed by this request. Must be in the format
  /// 'projects/{project}/locations/{location}/datasets/{dataset}'
  late final pulumi.Output<String> dataset;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// User-supplied key-value pairs used to organize DICOM stores.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must
  /// conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128
  /// bytes, and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be associated with a given store.
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The resource name for the DicomStore.
  /// ** Changing this property may recreate the Dicom store (removing all data) **
  late final pulumi.Output<String> name;

  /// A nested object resource.
  /// Structure is documented below.
  late final pulumi.Output<DicomStoreNotificationConfig?> notificationConfig;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The fully qualified name of this dataset
  late final pulumi.Output<String> selfLink;

  /// To enable streaming to BigQuery, configure the streamConfigs object in your DICOM store.
  /// streamConfigs is an array, so you can specify multiple BigQuery destinations. You can stream metadata from a single DICOM store to up to five BigQuery tables in a BigQuery dataset.
  /// Structure is documented below.
  late final pulumi.Output<List<DicomStoreStreamConfig>?> streamConfigs;

  /// Creates a new [DicomStore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DicomStore]. {@macro pulumi_healthcare_dicom_store_dicom_store_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DicomStore(
    String name, {
    DicomStoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:healthcare/dicomStore:DicomStore',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dataset = registerOutput<String>('dataset');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.notificationConfig =
        registerOutput<DicomStoreNotificationConfig?>('notificationConfig');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.selfLink = registerOutput<String>('selfLink');
    this.streamConfigs =
        registerOutput<List<DicomStoreStreamConfig>?>('streamConfigs');
  }
}
