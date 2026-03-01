import 'package:pulumi/pulumi.dart' as pulumi;
import 'batch_args.dart';
import 'environment_config_response.dart';
import 'py_spark_batch_response.dart';
import 'runtime_config_response.dart';
import 'runtime_info_response.dart';
import 'spark_batch_response.dart';
import 'spark_rbatch_response.dart';
import 'spark_sql_batch_response.dart';
import 'state_history_response.dart';

/// Creates a batch workload that executes asynchronously.
/// Auto-naming is currently not supported for this resource.
class Batch extends pulumi.CustomResource {
  /// Optional. The ID to use for the batch, which will become the final component of the batch's resource name.This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  late final pulumi.Output<String?> batchId;

  /// The time when the batch was created.
  late final pulumi.Output<String> createTime;

  /// The email address of the user who created the batch.
  late final pulumi.Output<String> creator;

  /// Optional. Environment configuration for the batch execution.
  late final pulumi.Output<EnvironmentConfigResponse> environmentConfig;

  /// Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The resource name of the batch.
  late final pulumi.Output<String> name;

  /// The resource name of the operation associated with this batch.
  late final pulumi.Output<String> operation;
  late final pulumi.Output<String> project;

  /// Optional. PySpark batch config.
  late final pulumi.Output<PySparkBatchResponse> pysparkBatch;

  /// Optional. A unique ID used to identify the request. If the service receives two CreateBatchRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s with the same request_id, the second request is ignored and the Operation that corresponds to the first Batch created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final pulumi.Output<String?> requestId;

  /// Optional. Runtime configuration for the batch execution.
  late final pulumi.Output<RuntimeConfigResponse> runtimeConfig;

  /// Runtime information about batch execution.
  late final pulumi.Output<RuntimeInfoResponse> runtimeInfo;

  /// Optional. Spark batch config.
  late final pulumi.Output<SparkBatchResponse> sparkBatch;

  /// Optional. SparkR batch config.
  late final pulumi.Output<SparkRBatchResponse> sparkRBatch;

  /// Optional. SparkSql batch config.
  late final pulumi.Output<SparkSqlBatchResponse> sparkSqlBatch;

  /// The state of the batch.
  late final pulumi.Output<String> state;

  /// Historical state information for the batch.
  late final pulumi.Output<List<StateHistoryResponse>> stateHistory;

  /// Batch state details, such as a failure description if the state is FAILED.
  late final pulumi.Output<String> stateMessage;

  /// The time when the batch entered a current state.
  late final pulumi.Output<String> stateTime;

  /// A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  late final pulumi.Output<String> uuid;

  /// Creates a new [Batch].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Batch]. {@macro pulumi_dataproc_v1_batch_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Batch(String name, {BatchArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:dataproc/v1:Batch',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.batchId = registerOutput<String?>('batchId');
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.environmentConfig = registerOutput<EnvironmentConfigResponse>(
      'environmentConfig',
    );
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.operation = registerOutput<String>('operation');
    this.project = registerOutput<String>('project');
    this.pysparkBatch = registerOutput<PySparkBatchResponse>('pysparkBatch');
    this.requestId = registerOutput<String?>('requestId');
    this.runtimeConfig = registerOutput<RuntimeConfigResponse>('runtimeConfig');
    this.runtimeInfo = registerOutput<RuntimeInfoResponse>('runtimeInfo');
    this.sparkBatch = registerOutput<SparkBatchResponse>('sparkBatch');
    this.sparkRBatch = registerOutput<SparkRBatchResponse>('sparkRBatch');
    this.sparkSqlBatch = registerOutput<SparkSqlBatchResponse>('sparkSqlBatch');
    this.state = registerOutput<String>('state');
    this.stateHistory = registerOutput<List<StateHistoryResponse>>(
      'stateHistory',
    );
    this.stateMessage = registerOutput<String>('stateMessage');
    this.stateTime = registerOutput<String>('stateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
