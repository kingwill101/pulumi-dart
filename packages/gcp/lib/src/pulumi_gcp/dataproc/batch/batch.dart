import 'package:pulumi/pulumi.dart' as pulumi;
import '../batch_environment_config/batch_environment_config.dart';
import '../batch_pyspark_batch/batch_pyspark_batch.dart';
import '../batch_runtime_config/batch_runtime_config.dart';
import '../batch_runtime_info/batch_runtime_info.dart';
import '../batch_spark_batch/batch_spark_batch.dart';
import '../batch_spark_rbatch/batch_spark_rbatch.dart';
import '../batch_spark_sql_batch/batch_spark_sql_batch.dart';
import '../batch_state_history/batch_state_history.dart';
import 'batch_args.dart';

/// Dataproc Serverless Batches lets you run Spark workloads without requiring you to
/// provision and manage your own Dataproc cluster.
///
///
/// To get more information about Batch, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.batches)
/// * How-to Guides
/// * [Dataproc Serverless Batches Intro](https://cloud.google.com/dataproc-serverless/docs/overview)
///
/// ## Example Usage
///
/// ### Dataproc Batch Spark
///
///
///
/// ### Dataproc Batch Spark Full
///
///
///
/// ### Dataproc Batch Sparksql
///
///
///
/// ### Dataproc Batch Pyspark
///
///
///
/// ### Dataproc Batch Sparkr
///
///
///
/// ### Dataproc Batch Autotuning
///
///
///
///
/// ## Import
///
/// Batch can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/batches/{{batch_id}}`
///
/// * `{{project}}/{{location}}/{{batch_id}}`
///
/// * `{{location}}/{{batch_id}}`
///
/// When using the `pulumi import` command, Batch can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/batch:Batch default projects/{{project}}/locations/{{location}}/batches/{{batch_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/batch:Batch default {{project}}/{{location}}/{{batch_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataproc/batch:Batch default {{location}}/{{batch_id}}
/// ```
class Batch extends pulumi.CustomResource {
  /// The ID to use for the batch, which will become the final component of the batch's resource name.
  /// This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  late final pulumi.Output<String?> batchId;

  /// The time when the batch was created.
  late final pulumi.Output<String> createTime;

  /// The email address of the user who created the batch.
  late final pulumi.Output<String> creator;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Environment configuration for the batch execution.
  /// Structure is documented below.
  late final pulumi.Output<BatchEnvironmentConfig?> environmentConfig;

  /// The labels to associate with this batch.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location in which the batch will be created in.
  late final pulumi.Output<String?> location;

  /// The resource name of the batch.
  late final pulumi.Output<String> name;

  /// The resource name of the operation associated with this batch.
  late final pulumi.Output<String> operation;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// PySpark batch config.
  /// Structure is documented below.
  late final pulumi.Output<BatchPysparkBatch?> pysparkBatch;

  /// Runtime configuration for the batch execution.
  /// Structure is documented below.
  late final pulumi.Output<BatchRuntimeConfig?> runtimeConfig;

  /// Runtime information about batch execution.
  /// Structure is documented below.
  late final pulumi.Output<List<BatchRuntimeInfo>> runtimeInfos;

  /// Spark batch config.
  /// Structure is documented below.
  late final pulumi.Output<BatchSparkBatch?> sparkBatch;

  /// SparkR batch config.
  /// Structure is documented below.
  late final pulumi.Output<BatchSparkRBatch?> sparkRBatch;

  /// Spark SQL batch config.
  /// Structure is documented below.
  late final pulumi.Output<BatchSparkSqlBatch?> sparkSqlBatch;

  /// (Output)
  /// The state of the batch at this point in history. For possible values, see the [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.batches#State).
  late final pulumi.Output<String> state;

  /// Historical state information for the batch.
  /// Structure is documented below.
  late final pulumi.Output<List<BatchStateHistory>> stateHistories;

  /// (Output)
  /// Details about the state at this point in history.
  late final pulumi.Output<String> stateMessage;

  /// Batch state details, such as a failure description if the state is FAILED.
  late final pulumi.Output<String> stateTime;

  /// A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  late final pulumi.Output<String> uuid;

  Batch(
    String name, {
    BatchArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/batch:Batch',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.batchId = registerOutput<String?>('batchId');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.environmentConfig =
        registerOutput<BatchEnvironmentConfig?>('environmentConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<String>('operation');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.pysparkBatch = registerOutput<BatchPysparkBatch?>('pysparkBatch');
    this.runtimeConfig = registerOutput<BatchRuntimeConfig?>('runtimeConfig');
    this.runtimeInfos = registerOutput<List<BatchRuntimeInfo>>('runtimeInfos');
    this.sparkBatch = registerOutput<BatchSparkBatch?>('sparkBatch');
    this.sparkRBatch = registerOutput<BatchSparkRBatch?>('sparkRBatch');
    this.sparkSqlBatch = registerOutput<BatchSparkSqlBatch?>('sparkSqlBatch');
    this.state = registerOutput<String>('state');
    this.stateHistories =
        registerOutput<List<BatchStateHistory>>('stateHistories');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.stateTime = registerOutput<String>('stateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
