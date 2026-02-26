import 'package:pulumi/pulumi.dart';
import 'execution_report_response.dart';
import 'import_job_args2.dart';
import 'validation_report_response.dart';

/// Creates an import job.
/// Auto-naming is currently not supported for this resource.
class ImportJob2 extends CustomResource {
  /// Reference to a source.
  late final Output<String> assetSource;

  /// The timestamp when the import job was completed.
  late final Output<String> completeTime;

  /// The timestamp when the import job was created.
  late final Output<String> createTime;

  /// Optional. User-friendly display name. Maximum length is 256 characters.
  late final Output<String> displayName;

  /// The report with the results of running the import job.
  late final Output<ExecutionReportResponse> executionReport;

  /// Required. ID of the import job.
  late final Output<String> importJobId;

  /// Labels as key value pairs.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The full name of the import job.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The state of the import job.
  late final Output<String> state;

  /// The timestamp when the import job was last updated.
  late final Output<String> updateTime;

  /// The report with the validation results of the import job.
  late final Output<ValidationReportResponse> validationReport;

  ImportJob2(
    String name, {
    ImportJobArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1:ImportJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetSource = Output.createUnknown<String>();
    this.completeTime = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.executionReport = Output.createUnknown<ExecutionReportResponse>();
    this.importJobId = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.validationReport = Output.createUnknown<ValidationReportResponse>();
  }
}
