import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_args.dart';

/// Creates a job on Dataflow, which is an implementation of Apache Beam running on Google Compute Engine. For more information see
/// the official documentation for
/// [Beam](https://beam.apache.org) and [Dataflow](https://cloud.google.com/dataflow/).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bigDataJob = new gcp.dataflow.Job("big_data_job", {
///     name: "dataflow-job",
///     templateGcsPath: "gs://my-bucket/templates/template_file",
///     tempGcsLocation: "gs://my-bucket/tmp_dir",
///     parameters: {
///         foo: "bar",
///         baz: "qux",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// big_data_job = gcp.dataflow.Job("big_data_job",
///     name="dataflow-job",
///     template_gcs_path="gs://my-bucket/templates/template_file",
///     temp_gcs_location="gs://my-bucket/tmp_dir",
///     parameters={
///         "foo": "bar",
///         "baz": "qux",
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
///     var bigDataJob = new Gcp.Dataflow.Job("big_data_job", new()
///     {
///         Name = "dataflow-job",
///         TemplateGcsPath = "gs://my-bucket/templates/template_file",
///         TempGcsLocation = "gs://my-bucket/tmp_dir",
///         Parameters =
///         {
///             { "foo", "bar" },
///             { "baz", "qux" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataflow"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataflow.NewJob(ctx, "big_data_job", &dataflow.JobArgs{
/// 			Name:            pulumi.String("dataflow-job"),
/// 			TemplateGcsPath: pulumi.String("gs://my-bucket/templates/template_file"),
/// 			TempGcsLocation: pulumi.String("gs://my-bucket/tmp_dir"),
/// 			Parameters: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 				"baz": pulumi.String("qux"),
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
/// import com.pulumi.gcp.dataflow.Job;
/// import com.pulumi.gcp.dataflow.JobArgs;
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
///         var bigDataJob = new Job("bigDataJob", JobArgs.builder()
///             .name("dataflow-job")
///             .templateGcsPath("gs://my-bucket/templates/template_file")
///             .tempGcsLocation("gs://my-bucket/tmp_dir")
///             .parameters(Map.ofEntries(
///                 Map.entry("foo", "bar"),
///                 Map.entry("baz", "qux")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bigDataJob:
///     type: gcp:dataflow:Job
///     name: big_data_job
///     properties:
///       name: dataflow-job
///       templateGcsPath: gs://my-bucket/templates/template_file
///       tempGcsLocation: gs://my-bucket/tmp_dir
///       parameters:
///         foo: bar
///         baz: qux
/// ```
///
///
/// ### Streaming Job
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const topic = new gcp.pubsub.Topic("topic", {name: "dataflow-job1"});
/// const bucket1 = new gcp.storage.Bucket("bucket1", {
///     name: "tf-test-bucket1",
///     location: "US",
///     forceDestroy: true,
/// });
/// const bucket2 = new gcp.storage.Bucket("bucket2", {
///     name: "tf-test-bucket2",
///     location: "US",
///     forceDestroy: true,
/// });
/// const pubsubStream = new gcp.dataflow.Job("pubsub_stream", {
///     name: "tf-test-dataflow-job1",
///     templateGcsPath: "gs://my-bucket/templates/template_file",
///     tempGcsLocation: "gs://my-bucket/tmp_dir",
///     enableStreamingEngine: true,
///     parameters: {
///         inputFilePattern: pulumi.interpolate`${bucket1.url}/*.json`,
///         outputTopic: topic.id,
///     },
///     transformNameMapping: {
///         name: "test_job",
///         env: "test",
///     },
///     onDelete: "cancel",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// topic = gcp.pubsub.Topic("topic", name="dataflow-job1")
/// bucket1 = gcp.storage.Bucket("bucket1",
///     name="tf-test-bucket1",
///     location="US",
///     force_destroy=True)
/// bucket2 = gcp.storage.Bucket("bucket2",
///     name="tf-test-bucket2",
///     location="US",
///     force_destroy=True)
/// pubsub_stream = gcp.dataflow.Job("pubsub_stream",
///     name="tf-test-dataflow-job1",
///     template_gcs_path="gs://my-bucket/templates/template_file",
///     temp_gcs_location="gs://my-bucket/tmp_dir",
///     enable_streaming_engine=True,
///     parameters={
///         "inputFilePattern": bucket1.url.apply(lambda url: f"{url}/*.json"),
///         "outputTopic": topic.id,
///     },
///     transform_name_mapping={
///         "name": "test_job",
///         "env": "test",
///     },
///     on_delete="cancel")
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
///         Name = "dataflow-job1",
///     });
///
///     var bucket1 = new Gcp.Storage.Bucket("bucket1", new()
///     {
///         Name = "tf-test-bucket1",
///         Location = "US",
///         ForceDestroy = true,
///     });
///
///     var bucket2 = new Gcp.Storage.Bucket("bucket2", new()
///     {
///         Name = "tf-test-bucket2",
///         Location = "US",
///         ForceDestroy = true,
///     });
///
///     var pubsubStream = new Gcp.Dataflow.Job("pubsub_stream", new()
///     {
///         Name = "tf-test-dataflow-job1",
///         TemplateGcsPath = "gs://my-bucket/templates/template_file",
///         TempGcsLocation = "gs://my-bucket/tmp_dir",
///         EnableStreamingEngine = true,
///         Parameters =
///         {
///             { "inputFilePattern", bucket1.Url.Apply(url => $"{url}/*.json") },
///             { "outputTopic", topic.Id },
///         },
///         TransformNameMapping =
///         {
///             { "name", "test_job" },
///             { "env", "test" },
///         },
///         OnDelete = "cancel",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataflow"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/pubsub"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		topic, err := pubsub.NewTopic(ctx, "topic", &pubsub.TopicArgs{
/// 			Name: pulumi.String("dataflow-job1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket1, err := storage.NewBucket(ctx, "bucket1", &storage.BucketArgs{
/// 			Name:         pulumi.String("tf-test-bucket1"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.NewBucket(ctx, "bucket2", &storage.BucketArgs{
/// 			Name:         pulumi.String("tf-test-bucket2"),
/// 			Location:     pulumi.String("US"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataflow.NewJob(ctx, "pubsub_stream", &dataflow.JobArgs{
/// 			Name:                  pulumi.String("tf-test-dataflow-job1"),
/// 			TemplateGcsPath:       pulumi.String("gs://my-bucket/templates/template_file"),
/// 			TempGcsLocation:       pulumi.String("gs://my-bucket/tmp_dir"),
/// 			EnableStreamingEngine: pulumi.Bool(true),
/// 			Parameters: pulumi.StringMap{
/// 				"inputFilePattern": bucket1.Url.ApplyT(func(url string) (string, error) {
/// 					return fmt.Sprintf("%v/*.json", url), nil
/// 				}).(pulumi.StringOutput),
/// 				"outputTopic": topic.ID(),
/// 			},
/// 			TransformNameMapping: pulumi.StringMap{
/// 				"name": pulumi.String("test_job"),
/// 				"env":  pulumi.String("test"),
/// 			},
/// 			OnDelete: pulumi.String("cancel"),
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
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.dataflow.Job;
/// import com.pulumi.gcp.dataflow.JobArgs;
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
///             .name("dataflow-job1")
///             .build());
///
///         var bucket1 = new Bucket("bucket1", BucketArgs.builder()
///             .name("tf-test-bucket1")
///             .location("US")
///             .forceDestroy(true)
///             .build());
///
///         var bucket2 = new Bucket("bucket2", BucketArgs.builder()
///             .name("tf-test-bucket2")
///             .location("US")
///             .forceDestroy(true)
///             .build());
///
///         var pubsubStream = new Job("pubsubStream", JobArgs.builder()
///             .name("tf-test-dataflow-job1")
///             .templateGcsPath("gs://my-bucket/templates/template_file")
///             .tempGcsLocation("gs://my-bucket/tmp_dir")
///             .enableStreamingEngine(true)
///             .parameters(Map.ofEntries(
///                 Map.entry("inputFilePattern", bucket1.url().applyValue(_url -> String.format("%s/*.json", _url))),
///                 Map.entry("outputTopic", topic.id())
///             ))
///             .transformNameMapping(Map.ofEntries(
///                 Map.entry("name", "test_job"),
///                 Map.entry("env", "test")
///             ))
///             .onDelete("cancel")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   topic:
///     type: gcp:pubsub:Topic
///     properties:
///       name: dataflow-job1
///   bucket1:
///     type: gcp:storage:Bucket
///     properties:
///       name: tf-test-bucket1
///       location: US
///       forceDestroy: true
///   bucket2:
///     type: gcp:storage:Bucket
///     properties:
///       name: tf-test-bucket2
///       location: US
///       forceDestroy: true
///   pubsubStream:
///     type: gcp:dataflow:Job
///     name: pubsub_stream
///     properties:
///       name: tf-test-dataflow-job1
///       templateGcsPath: gs://my-bucket/templates/template_file
///       tempGcsLocation: gs://my-bucket/tmp_dir
///       enableStreamingEngine: true
///       parameters:
///         inputFilePattern: ${bucket1.url}/*.json
///         outputTopic: ${topic.id}
///       transformNameMapping:
///         name: test_job
///         env: test
///       onDelete: cancel
/// ```
///
///
/// ## Note on "destroy" / "apply"
///
/// There are many types of Dataflow jobs.  Some Dataflow jobs run constantly, getting new data from (e.g.) a GCS bucket, and outputting data continuously.  Some jobs process a set amount of data then terminate.  All jobs can fail while running due to programming errors or other issues.  In this way, Dataflow jobs are different from most other Google resources.
///
/// The Dataflow resource is considered 'existing' while it is in a nonterminal state.  If it reaches a terminal state (e.g. 'FAILED', 'COMPLETE', 'CANCELLED'), it will be recreated on the next 'apply'.  This is as expected for jobs which run continuously, but may surprise users who use this resource for other kinds of Dataflow jobs.
///
/// A Dataflow job which is 'destroyed' may be "cancelled" or "drained".  If "cancelled", the job terminates - any data written remains where it is, but no new data will be processed.  If "drained", no new data will enter the pipeline, but any data currently in the pipeline will finish being processed.  The default is "drain". When `on_delete` is set to `"drain"` in the configuration, you may experience a long wait for your `pulumi destroy` to complete.
///
/// You can potentially short-circuit the wait by setting `skip_wait_on_job_termination` to `true`, but beware that unless you take active steps to ensure that the job `name` parameter changes between instances, the name will conflict and the launch of the new job will fail. One way to do this is with a random_id resource, for example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const bigDataJobSubscriptionId = config.get("bigDataJobSubscriptionId") || "projects/myproject/subscriptions/messages";
/// const bigDataJobNameSuffix = new random.index.Id("big_data_job_name_suffix", {
///     byteLength: 4,
///     keepers: {
///         region: region,
///         subscriptionId: bigDataJobSubscriptionId,
///     },
/// });
/// const bigDataJob = new gcp.dataflow.FlexTemplateJob("big_data_job", {
///     name: `dataflow-flextemplates-job-${bigDataJobNameSuffix.dec}`,
///     region: region,
///     containerSpecGcsPath: "gs://my-bucket/templates/template.json",
///     skipWaitOnJobTermination: true,
///     parameters: {
///         inputSubscription: bigDataJobSubscriptionId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// big_data_job_subscription_id = config.get("bigDataJobSubscriptionId")
/// if big_data_job_subscription_id is None:
///     big_data_job_subscription_id = "projects/myproject/subscriptions/messages"
/// big_data_job_name_suffix = random.index.Id("big_data_job_name_suffix",
///     byte_length=4,
///     keepers={
///         region: region,
///         subscriptionId: big_data_job_subscription_id,
///     })
/// big_data_job = gcp.dataflow.FlexTemplateJob("big_data_job",
///     name=f"dataflow-flextemplates-job-{big_data_job_name_suffix['dec']}",
///     region=region,
///     container_spec_gcs_path="gs://my-bucket/templates/template.json",
///     skip_wait_on_job_termination=True,
///     parameters={
///         "inputSubscription": big_data_job_subscription_id,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var bigDataJobSubscriptionId = config.Get("bigDataJobSubscriptionId") ?? "projects/myproject/subscriptions/messages";
///     var bigDataJobNameSuffix = new Random.Index.Id("big_data_job_name_suffix", new()
///     {
///         ByteLength = 4,
///         Keepers =
///         {
///             { "region", region },
///             { "subscriptionId", bigDataJobSubscriptionId },
///         },
///     });
///
///     var bigDataJob = new Gcp.Dataflow.FlexTemplateJob("big_data_job", new()
///     {
///         Name = $"dataflow-flextemplates-job-{bigDataJobNameSuffix.Dec}",
///         Region = region,
///         ContainerSpecGcsPath = "gs://my-bucket/templates/template.json",
///         SkipWaitOnJobTermination = true,
///         Parameters =
///         {
///             { "inputSubscription", bigDataJobSubscriptionId },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataflow"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		bigDataJobSubscriptionId := "projects/myproject/subscriptions/messages"
/// 		if param := cfg.Get("bigDataJobSubscriptionId"); param != "" {
/// 			bigDataJobSubscriptionId = param
/// 		}
/// 		bigDataJobNameSuffix, err := random.NewId(ctx, "big_data_job_name_suffix", &random.IdArgs{
/// 			ByteLength: 4,
/// 			Keepers: map[string]interface{}{
/// 				"region":         region,
/// 				"subscriptionId": bigDataJobSubscriptionId,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataflow.NewFlexTemplateJob(ctx, "big_data_job", &dataflow.FlexTemplateJobArgs{
/// 			Name:                     pulumi.Sprintf("dataflow-flextemplates-job-%v", bigDataJobNameSuffix.Dec),
/// 			Region:                   pulumi.Any(region),
/// 			ContainerSpecGcsPath:     pulumi.String("gs://my-bucket/templates/template.json"),
/// 			SkipWaitOnJobTermination: pulumi.Bool(true),
/// 			Parameters: pulumi.StringMap{
/// 				"inputSubscription": pulumi.String(bigDataJobSubscriptionId),
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
/// import com.pulumi.random.Id;
/// import com.pulumi.random.IdArgs;
/// import com.pulumi.gcp.dataflow.FlexTemplateJob;
/// import com.pulumi.gcp.dataflow.FlexTemplateJobArgs;
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
///         final var config = ctx.config();
///         final var bigDataJobSubscriptionId = config.get("bigDataJobSubscriptionId").orElse("projects/myproject/subscriptions/messages");
///         var bigDataJobNameSuffix = new Id("bigDataJobNameSuffix", IdArgs.builder()
///             .byteLength(4)
///             .keepers(Map.ofEntries(
///                 Map.entry("region", region),
///                 Map.entry("subscriptionId", bigDataJobSubscriptionId)
///             ))
///             .build());
///
///         var bigDataJob = new FlexTemplateJob("bigDataJob", FlexTemplateJobArgs.builder()
///             .name(String.format("dataflow-flextemplates-job-%s", bigDataJobNameSuffix.dec()))
///             .region(region)
///             .containerSpecGcsPath("gs://my-bucket/templates/template.json")
///             .skipWaitOnJobTermination(true)
///             .parameters(Map.of("inputSubscription", bigDataJobSubscriptionId))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   bigDataJobSubscriptionId:
///     type: string
///     default: projects/myproject/subscriptions/messages
/// resources:
///   bigDataJobNameSuffix:
///     type: random:Id
///     name: big_data_job_name_suffix
///     properties:
///       byteLength: 4
///       keepers:
///         region: ${region}
///         subscriptionId: ${bigDataJobSubscriptionId}
///   bigDataJob:
///     type: gcp:dataflow:FlexTemplateJob
///     name: big_data_job
///     properties:
///       name: dataflow-flextemplates-job-${bigDataJobNameSuffix.dec}
///       region: ${region}
///       containerSpecGcsPath: gs://my-bucket/templates/template.json
///       skipWaitOnJobTermination: true
///       parameters:
///         inputSubscription: ${bigDataJobSubscriptionId}
/// ```
///
///
/// ## Import
///
/// Dataflow jobs can be imported using the job `id` e.g.
///
/// * `{{id}}`
///
/// When using the `pulumi import` command, dataflow jobs can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataflow/job:Job default {{id}}
/// ```
class Job extends pulumi.CustomResource {
  /// List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  late final pulumi.Output<List<String>> additionalExperiments;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Enable/disable the use of [Streaming Engine](https://cloud.google.com/dataflow/docs/guides/deploying-a-pipeline#streaming-engine) for the job. Note that Streaming Engine is enabled by default for pipelines developed against the Beam SDK for Python v2.21.0 or later when using Python 3.
  late final pulumi.Output<bool?> enableStreamingEngine;
  /// The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  late final pulumi.Output<String?> ipConfiguration;
  /// The unique ID of this job.
  late final pulumi.Output<String> jobId;
  /// The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  late final pulumi.Output<String?> kmsKeyName;
  /// User labels to be specified for the job. Keys and values should follow the restrictions
  /// specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions) page.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration. Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The machine type to use for the job.
  late final pulumi.Output<String?> machineType;
  /// The number of workers permitted to work on the job.  More workers may improve processing speed at additional cost.
  late final pulumi.Output<int?> maxWorkers;
  /// A unique name for the resource, required by Dataflow.
  late final pulumi.Output<String> name;
  /// The network to which VMs will be assigned. If it is not provided, "default" will be used.
  late final pulumi.Output<String?> network;
  /// One of "drain" or "cancel".  Specifies behavior of deletion during `pulumi destroy`.  See above note.
  late final pulumi.Output<String?> onDelete;
  /// **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// case-sensitive based on the language on which the pipeline is coded, mostly Java.
  /// **Note**: do not configure Dataflow options here in parameters.
  late final pulumi.Output<Map<String, String>?> parameters;
  /// The project in which the resource belongs. If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// The region in which the created job should run.
  late final pulumi.Output<String?> region;
  /// The Service Account email used to create the job. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  late final pulumi.Output<String?> serviceAccountEmail;
  /// If set to `true`, Pulumi will treat `DRAINING` and `CANCELLING` as terminal states when deleting the resource, and will remove the resource from Pulumi state and move on.  See above note.
  late final pulumi.Output<bool?> skipWaitOnJobTermination;
  /// The current state of the resource, selected from the [JobState enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobState)
  late final pulumi.Output<String> state;
  /// The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK". If the [subnetwork is located in a Shared VPC network](https://cloud.google.com/dataflow/docs/guides/specifying-networks#shared), you must use the complete URL. For example `"googleapis.com/compute/v1/projects/PROJECT_ID/regions/REGION/subnetworks/SUBNET_NAME"`
  late final pulumi.Output<String?> subnetwork;
  /// A writeable location on GCS for the Dataflow job to dump its temporary data.
  ///
  /// - - -
  late final pulumi.Output<String> tempGcsLocation;
  /// The GCS path to the Dataflow job template.
  late final pulumi.Output<String> templateGcsPath;
  /// Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job. This field is not used outside of update.
  late final pulumi.Output<Map<String, String>?> transformNameMapping;
  /// The type of this job, selected from the [JobType enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobType)
  late final pulumi.Output<String> type;
  /// The zone in which the created job should run. If it is not provided, the provider zone is used.
  late final pulumi.Output<String?> zone;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_dataflow_job_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(
    String name, {
    JobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataflow/job:Job',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.additionalExperiments = registerOutput<List<String>>('additionalExperiments');
    this.effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    this.enableStreamingEngine = registerOutput<bool?>('enableStreamingEngine');
    this.ipConfiguration = registerOutput<String?>('ipConfiguration');
    this.jobId = registerOutput<String>('jobId');
    this.kmsKeyName = registerOutput<String?>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.machineType = registerOutput<String?>('machineType');
    this.maxWorkers = registerOutput<int?>('maxWorkers');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String?>('network');
    this.onDelete = registerOutput<String?>('onDelete');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String?>('region');
    this.serviceAccountEmail = registerOutput<String?>('serviceAccountEmail');
    this.skipWaitOnJobTermination = registerOutput<bool?>('skipWaitOnJobTermination');
    this.state = registerOutput<String>('state');
    this.subnetwork = registerOutput<String?>('subnetwork');
    this.tempGcsLocation = registerOutput<String>('tempGcsLocation');
    this.templateGcsPath = registerOutput<String>('templateGcsPath');
    this.transformNameMapping = registerOutput<Map<String, String>?>('transformNameMapping');
    this.type = registerOutput<String>('type');
    this.zone = registerOutput<String?>('zone');
  }
}
