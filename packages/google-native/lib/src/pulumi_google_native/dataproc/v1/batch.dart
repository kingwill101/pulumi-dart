import 'package:pulumi/pulumi.dart';
import 'batch_args.dart';
import 'environment_config_response3.dart';
import 'py_spark_batch_response.dart';
import 'runtime_config_response2.dart';
import 'runtime_info_response.dart';
import 'spark_batch_response.dart';
import 'spark_rbatch_response.dart';
import 'spark_sql_batch_response.dart';
import 'state_history_response.dart';

/// Creates a batch workload that executes asynchronously.
/// Auto-naming is currently not supported for this resource.
class Batch extends CustomResource {
  /// Optional. The ID to use for the batch, which will become the final component of the batch's resource name.This value must be 4-63 characters. Valid characters are /[a-z][0-9]-/.
  late final Output<String?> batchId;

  /// The time when the batch was created.
  late final Output<String> createTime;

  /// The email address of the user who created the batch.
  late final Output<String> creator;

  /// Optional. Environment configuration for the batch execution.
  late final Output<EnvironmentConfigResponse3> environmentConfig;

  /// Optional. The labels to associate with this batch. Label keys must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). Label values may be empty, but, if present, must contain 1 to 63 characters, and must conform to RFC 1035 (https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a batch.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource name of the batch.
  late final Output<String> name;

  /// The resource name of the operation associated with this batch.
  late final Output<String> operation;
  late final Output<String> project;

  /// Optional. PySpark batch config.
  late final Output<PySparkBatchResponse> pysparkBatch;

  /// Optional. A unique ID used to identify the request. If the service receives two CreateBatchRequest (https://cloud.google.com/dataproc/docs/reference/rpc/google.cloud.dataproc.v1#google.cloud.dataproc.v1.CreateBatchRequest)s with the same request_id, the second request is ignored and the Operation that corresponds to the first Batch created and stored in the backend is returned.Recommendation: Set this value to a UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier).The value must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// Optional. Runtime configuration for the batch execution.
  late final Output<RuntimeConfigResponse2> runtimeConfig;

  /// Runtime information about batch execution.
  late final Output<RuntimeInfoResponse> runtimeInfo;

  /// Optional. Spark batch config.
  late final Output<SparkBatchResponse> sparkBatch;

  /// Optional. SparkR batch config.
  late final Output<SparkRBatchResponse> sparkRBatch;

  /// Optional. SparkSql batch config.
  late final Output<SparkSqlBatchResponse> sparkSqlBatch;

  /// The state of the batch.
  late final Output<String> state;

  /// Historical state information for the batch.
  late final Output<List<StateHistoryResponse>> stateHistory;

  /// Batch state details, such as a failure description if the state is FAILED.
  late final Output<String> stateMessage;

  /// The time when the batch entered a current state.
  late final Output<String> stateTime;

  /// A batch UUID (Unique Universal Identifier). The service generates this value when it creates the batch.
  late final Output<String> uuid;

  Batch(
    String name, {
    BatchArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataproc/v1:Batch',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.batchId = Output.createUnknown<String?>();
    this.createTime = Output.createUnknown<String>();
    this.creator = Output.createUnknown<String>();
    this.environmentConfig = Output.createUnknown<EnvironmentConfigResponse3>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.operation = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.pysparkBatch = Output.createUnknown<PySparkBatchResponse>();
    this.requestId = Output.createUnknown<String?>();
    this.runtimeConfig = Output.createUnknown<RuntimeConfigResponse2>();
    this.runtimeInfo = Output.createUnknown<RuntimeInfoResponse>();
    this.sparkBatch = Output.createUnknown<SparkBatchResponse>();
    this.sparkRBatch = Output.createUnknown<SparkRBatchResponse>();
    this.sparkSqlBatch = Output.createUnknown<SparkSqlBatchResponse>();
    this.state = Output.createUnknown<String>();
    this.stateHistory = Output.createUnknown<List<StateHistoryResponse>>();
    this.stateMessage = Output.createUnknown<String>();
    this.stateTime = Output.createUnknown<String>();
    this.uuid = Output.createUnknown<String>();
  }
}
