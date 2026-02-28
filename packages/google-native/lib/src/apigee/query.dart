import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_async_query_result_response.dart';
import 'google_cloud_apigee_v1_query_metadata_response.dart';
import 'query_args.dart';

/// Submit a query to be processed in the background. If the submission of the query succeeds, the API returns a 201 status and an ID that refer to the query. In addition to the HTTP status 201, the `state` of "enqueued" means that the request succeeded.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class Query extends pulumi.CustomResource {
  /// Creation time of the query.
  late final pulumi.Output<String> created;

  /// Hostname is available only when query is executed at host level.
  late final pulumi.Output<String> envgroupHostname;
  late final pulumi.Output<String> environmentId;

  /// Error is set when query fails.
  late final pulumi.Output<String> error;

  /// ExecutionTime is available only after the query is completed.
  late final pulumi.Output<String> executionTime;

  /// Asynchronous Query Name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;

  /// Contains information like metrics, dimenstions etc of the AsyncQuery.
  late final pulumi.Output<GoogleCloudApigeeV1QueryMetadataResponse>
      queryParams;

  /// Asynchronous Report ID.
  late final pulumi.Output<String> reportDefinitionId;

  /// Result is available only after the query is completed.
  late final pulumi.Output<GoogleCloudApigeeV1AsyncQueryResultResponse> result;

  /// ResultFileSize is available only after the query is completed.
  late final pulumi.Output<String> resultFileSize;

  /// ResultRows is available only after the query is completed.
  late final pulumi.Output<String> resultRows;

  /// Self link of the query. Example: `/organizations/myorg/environments/myenv/queries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostQueries/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  late final pulumi.Output<String> self;

  /// Query state could be "enqueued", "running", "completed", "failed".
  late final pulumi.Output<String> state;

  /// Last updated timestamp for the query.
  late final pulumi.Output<String> updated;

  /// Creates a new [Query].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Query]. {@macro pulumi_apigee_v1_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Query(
    String name, {
    QueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:Query',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.envgroupHostname = registerOutput<String>('envgroupHostname');
    this.environmentId = registerOutput<String>('environmentId');
    this.error = registerOutput<String>('error');
    this.executionTime = registerOutput<String>('executionTime');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.queryParams =
        registerOutput<GoogleCloudApigeeV1QueryMetadataResponse>('queryParams');
    this.reportDefinitionId = registerOutput<String>('reportDefinitionId');
    this.result =
        registerOutput<GoogleCloudApigeeV1AsyncQueryResultResponse>('result');
    this.resultFileSize = registerOutput<String>('resultFileSize');
    this.resultRows = registerOutput<String>('resultRows');
    this.self = registerOutput<String>('self');
    this.state = registerOutput<String>('state');
    this.updated = registerOutput<String>('updated');
  }
}
