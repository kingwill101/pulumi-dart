import 'package:pulumi/pulumi.dart';
import 'execution_report_response2.dart';
import 'gcspayload_info_response.dart';
import 'import_job_args3.dart';
import 'inline_payload_info_response.dart';
import 'validation_report_response2.dart';

/// Creates an import job.
/// Auto-naming is currently not supported for this resource.
class ImportJob3 extends CustomResource {
  /// Reference to a source.
  late final Output<String> assetSource;

  /// The timestamp when the import job was completed.
  late final Output<String> completeTime;

  /// The timestamp when the import job was created.
  late final Output<String> createTime;

  /// User-friendly display name. Maximum length is 63 characters.
  late final Output<String> displayName;

  /// The report with the results of running the import job.
  late final Output<ExecutionReportResponse2> executionReport;

  /// The payload is in Google Cloud Storage.
  late final Output<GCSPayloadInfoResponse> gcsPayload;

  /// Required. ID of the import job.
  late final Output<String> importJobId;

  /// The payload is included in the request, mainly used for small import jobs.
  late final Output<InlinePayloadInfoResponse> inlinePayload;

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
  late final Output<ValidationReportResponse2> validationReport;

  ImportJob3(
    String name, {
    ImportJobArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1alpha1:ImportJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assetSource = registerOutput<String>('assetSource');
    this.completeTime = registerOutput<String>('completeTime');
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.executionReport =
        registerOutput<ExecutionReportResponse2>('executionReport');
    this.gcsPayload = registerOutput<GCSPayloadInfoResponse>('gcsPayload');
    this.importJobId = registerOutput<String>('importJobId');
    this.inlinePayload =
        registerOutput<InlinePayloadInfoResponse>('inlinePayload');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.validationReport =
        registerOutput<ValidationReportResponse2>('validationReport');
  }
}
