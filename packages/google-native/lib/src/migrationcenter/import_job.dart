import 'package:pulumi/pulumi.dart' as pulumi;
import 'execution_report_response.dart';
import 'import_job_args.dart';
import 'validation_report_response.dart';

/// Creates an import job.
/// Auto-naming is currently not supported for this resource.
class ImportJob extends pulumi.CustomResource {
  /// Reference to a source.
  late final pulumi.Output<String> assetSource;
  /// The timestamp when the import job was completed.
  late final pulumi.Output<String> completeTime;
  /// The timestamp when the import job was created.
  late final pulumi.Output<String> createTime;
  /// Optional. User-friendly display name. Maximum length is 256 characters.
  late final pulumi.Output<String> displayName;
  /// The report with the results of running the import job.
  late final pulumi.Output<ExecutionReportResponse> executionReport;
  /// Required. ID of the import job.
  late final pulumi.Output<String> importJobId;
  /// Labels as key value pairs.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// The full name of the import job.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// The state of the import job.
  late final pulumi.Output<String> state;
  /// The timestamp when the import job was last updated.
  late final pulumi.Output<String> updateTime;
  /// The report with the validation results of the import job.
  late final pulumi.Output<ValidationReportResponse> validationReport;

  /// Creates a new [ImportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportJob]. {@macro pulumi_migrationcenter_v1_import_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportJob(
    String name, {
    ImportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1:ImportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.assetSource = registerOutput<String>('assetSource');
    this.completeTime = registerOutput<String>('completeTime');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.executionReport = registerOutput<ExecutionReportResponse>('executionReport');
    this.importJobId = registerOutput<String>('importJobId');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.validationReport = registerOutput<ValidationReportResponse>('validationReport');
  }
}
