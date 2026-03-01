import 'package:pulumi/pulumi.dart' as pulumi;
import 'flex_template_job_args.dart';

/// Creates a [Flex Template](https://cloud.google.com/dataflow/docs/guides/templates/using-flex-templates)
/// job on Dataflow, which is an implementation of Apache Beam running on Google
/// Compute Engine. For more information see the official documentation for [Beam](https://beam.apache.org)
/// and [Dataflow](https://cloud.google.com/dataflow/).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const bigDataJob = new gcp.dataflow.FlexTemplateJob("big_data_job", {
///     name: "dataflow-flextemplates-job",
///     containerSpecGcsPath: "gs://my-bucket/templates/template.json",
///     parameters: {
///         inputSubscription: "messages",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// big_data_job = gcp.dataflow.FlexTemplateJob("big_data_job",
///     name="dataflow-flextemplates-job",
///     container_spec_gcs_path="gs://my-bucket/templates/template.json",
///     parameters={
///         "inputSubscription": "messages",
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
///     var bigDataJob = new Gcp.Dataflow.FlexTemplateJob("big_data_job", new()
///     {
///         Name = "dataflow-flextemplates-job",
///         ContainerSpecGcsPath = "gs://my-bucket/templates/template.json",
///         Parameters =
///         {
///             { "inputSubscription", "messages" },
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
/// 		_, err := dataflow.NewFlexTemplateJob(ctx, "big_data_job", &dataflow.FlexTemplateJobArgs{
/// 			Name:                 pulumi.String("dataflow-flextemplates-job"),
/// 			ContainerSpecGcsPath: pulumi.String("gs://my-bucket/templates/template.json"),
/// 			Parameters: pulumi.StringMap{
/// 				"inputSubscription": pulumi.String("messages"),
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
///         var bigDataJob = new FlexTemplateJob("bigDataJob", FlexTemplateJobArgs.builder()
///             .name("dataflow-flextemplates-job")
///             .containerSpecGcsPath("gs://my-bucket/templates/template.json")
///             .parameters(Map.of("inputSubscription", "messages"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bigDataJob:
///     type: gcp:dataflow:FlexTemplateJob
///     name: big_data_job
///     properties:
///       name: dataflow-flextemplates-job
///       containerSpecGcsPath: gs://my-bucket/templates/template.json
///       parameters:
///         inputSubscription: messages
/// ```
///
///
/// ## Note on "destroy" / "apply"
///
/// There are many types of Dataflow jobs.  Some Dataflow jobs run constantly,
/// getting new data from (e.g.) a GCS bucket, and outputting data continuously.
/// Some jobs process a set amount of data then terminate. All jobs can fail while
/// running due to programming errors or other issues. In this way, Dataflow jobs
/// are different from most other provider / Google resources.
///
/// The Dataflow resource is considered 'existing' while it is in a nonterminal
/// state.  If it reaches a terminal state (e.g. 'FAILED', 'COMPLETE',
/// 'CANCELLED'), it will be recreated on the next 'apply'.  This is as expected for
/// jobs which run continuously, but may surprise users who use this resource for
/// other kinds of Dataflow jobs.
///
/// A Dataflow job which is 'destroyed' may be "cancelled" or "drained".  If
/// "cancelled", the job terminates - any data written remains where it is, but no
/// new data will be processed.  If "drained", no new data will enter the pipeline,
/// but any data currently in the pipeline will finish being processed.  The default
/// is "cancelled", but if a user sets `on_delete` to `"drain"` in the
/// configuration, you may experience a long wait for your `pulumi destroy` to
/// complete.
///
/// You can potentially short-circuit the wait by setting `skip_wait_on_job_termination`
/// to `true`, but beware that unless you take active steps to ensure that the job
/// `name` parameter changes between instances, the name will conflict and the launch
/// of the new job will fail. One way to do this is with a
/// random_id
/// resource, for example:
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
/// This resource does not support import.
class FlexTemplateJob extends pulumi.CustomResource {
  /// List of experiments that should be used by the job. An example value is `["enable_stackdriver_agent_metrics"]`.
  late final pulumi.Output<List<String>> additionalExperiments;

  /// List of pipeline options that should be used by the job. An example value is `["numberOfWorkerHarnessThreads=20"]`.
  late final pulumi.Output<List<String>?> additionalPipelineOptions;

  /// The algorithm to use for autoscaling.
  late final pulumi.Output<String> autoscalingAlgorithm;

  /// The GCS path to the Dataflow job Flex
  /// Template.
  ///
  /// - - -
  late final pulumi.Output<String> containerSpecGcsPath;
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Immutable. Indicates if the job should use the streaming engine feature.
  late final pulumi.Output<bool?> enableStreamingEngine;

  /// The configuration for VM IPs.  Options are `"WORKER_IP_PUBLIC"` or `"WORKER_IP_PRIVATE"`.
  late final pulumi.Output<String?> ipConfiguration;

  /// The unique ID of this job.
  late final pulumi.Output<String> jobId;

  /// The name for the Cloud KMS key for the job. Key format is: `projects/PROJECT_ID/locations/LOCATION/keyRings/KEY_RING/cryptoKeys/KEY`
  late final pulumi.Output<String> kmsKeyName;

  /// User labels to be specified for the job. Keys and values
  /// should follow the restrictions specified in the [labeling restrictions](https://cloud.google.com/compute/docs/labeling-resources#restrictions)
  /// page. **Note**: This field is marked as deprecated as the API does not currently
  /// support adding labels.
  /// **NOTE**: Google-provided Dataflow templates often provide default labels
  /// that begin with `goog-dataflow-provided`. Unless explicitly set in config, these
  /// labels will be ignored to prevent diffs on re-apply.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The machine type to use for launching the job. The default is n1-standard-1.
  late final pulumi.Output<String> launcherMachineType;

  /// The machine type to use for the job.
  late final pulumi.Output<String> machineType;

  /// Immutable. The maximum number of Google Compute Engine instances to be made available to your pipeline during execution, from 1 to 1000.
  late final pulumi.Output<int> maxWorkers;

  /// Immutable. A unique name for the resource, required by Dataflow.
  late final pulumi.Output<String> name;

  /// The network to which VMs will be assigned. If it is not provided, "default" will be used.
  late final pulumi.Output<String> network;

  /// Immutable. The initial number of Google Compute Engine instances for the job.
  late final pulumi.Output<int> numWorkers;

  /// One of "drain" or "cancel". Specifies behavior of
  /// deletion during `pulumi destroy`.  See above note.
  late final pulumi.Output<String?> onDelete;

  /// **Template specific** Key/Value pairs to be forwarded to the pipeline's options; keys are
  /// case-sensitive based on the language on which the pipeline is coded, mostly Java.
  /// **Note**: do not configure Dataflow options here in parameters.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// The project in which the resource belongs. If it is not
  /// provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Immutable. The region in which the created job should run.
  late final pulumi.Output<String> region;

  /// Docker registry location of container image to use for the 'worker harness. Default is the container for the version of the SDK. Note this field is only valid for portable pipelines.
  late final pulumi.Output<String> sdkContainerImage;

  /// Service account email to run the workers as. This should be just an email e.g. `myserviceaccount@myproject.iam.gserviceaccount.com`. Do not include any `serviceAccount:` or other prefix.
  late final pulumi.Output<String> serviceAccountEmail;
  late final pulumi.Output<bool?> skipWaitOnJobTermination;

  /// The Cloud Storage path to use for staging files. Must be a valid Cloud Storage URL, beginning with gs://.
  late final pulumi.Output<String> stagingLocation;

  /// The current state of the resource, selected from the [JobState enum](https://cloud.google.com/dataflow/docs/reference/rest/v1b3/projects.jobs#Job.JobState)
  late final pulumi.Output<String> state;

  /// The subnetwork to which VMs will be assigned. Should be of the form "regions/REGION/subnetworks/SUBNETWORK".
  late final pulumi.Output<String> subnetwork;

  /// The Cloud Storage path to use for temporary files. Must be a valid Cloud Storage URL, beginning with gs://.
  late final pulumi.Output<String> tempLocation;

  /// Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job.Only applicable when updating a pipeline. Map of transform name prefixes of the job to be replaced with the corresponding name prefixes of the new job.
  late final pulumi.Output<Map<String, String>?> transformNameMapping;

  /// The type of this job, selected from the JobType enum.
  late final pulumi.Output<String> type;

  /// Creates a new [FlexTemplateJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexTemplateJob]. {@macro pulumi_dataflow_flex_template_job_flex_template_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexTemplateJob(
    String name, {
    FlexTemplateJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:dataflow/flexTemplateJob:FlexTemplateJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.additionalExperiments = registerOutput<List<String>>(
      'additionalExperiments',
    );
    this.additionalPipelineOptions = registerOutput<List<String>?>(
      'additionalPipelineOptions',
    );
    this.autoscalingAlgorithm = registerOutput<String>('autoscalingAlgorithm');
    this.containerSpecGcsPath = registerOutput<String>('containerSpecGcsPath');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.enableStreamingEngine = registerOutput<bool?>('enableStreamingEngine');
    this.ipConfiguration = registerOutput<String?>('ipConfiguration');
    this.jobId = registerOutput<String>('jobId');
    this.kmsKeyName = registerOutput<String>('kmsKeyName');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.launcherMachineType = registerOutput<String>('launcherMachineType');
    this.machineType = registerOutput<String>('machineType');
    this.maxWorkers = registerOutput<int>('maxWorkers');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.numWorkers = registerOutput<int>('numWorkers');
    this.onDelete = registerOutput<String?>('onDelete');
    this.parameters = registerOutput<Map<String, String>?>('parameters');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.region = registerOutput<String>('region');
    this.sdkContainerImage = registerOutput<String>('sdkContainerImage');
    this.serviceAccountEmail = registerOutput<String>('serviceAccountEmail');
    this.skipWaitOnJobTermination = registerOutput<bool?>(
      'skipWaitOnJobTermination',
    );
    this.stagingLocation = registerOutput<String>('stagingLocation');
    this.state = registerOutput<String>('state');
    this.subnetwork = registerOutput<String>('subnetwork');
    this.tempLocation = registerOutput<String>('tempLocation');
    this.transformNameMapping = registerOutput<Map<String, String>?>(
      'transformNameMapping',
    );
    this.type = registerOutput<String>('type');
  }
}
