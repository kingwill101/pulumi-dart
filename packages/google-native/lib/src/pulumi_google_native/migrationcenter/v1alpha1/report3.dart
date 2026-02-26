import 'package:pulumi/pulumi.dart';
import 'report_args3.dart';
import 'report_summary_response2.dart';

/// Creates a report.
/// Auto-naming is currently not supported for this resource.
class Report3 extends CustomResource {
  /// Creation timestamp.
  late final Output<String> createTime;

  /// Free-text description.
  late final Output<String> description;

  /// User-friendly display name. Maximum length is 63 characters.
  late final Output<String> displayName;
  late final Output<String> location;

  /// Name of resource.
  late final Output<String> name;
  late final Output<String> project;
  late final Output<String> reportConfigId;

  /// Required. User specified id for the report. It will become the last component of the report name. The id must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The id must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  late final Output<String> reportId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Report creation state.
  late final Output<String> state;

  /// Summary view of the Report.
  late final Output<ReportSummaryResponse2> summary;

  /// Report type.
  late final Output<String> type;

  /// Last update timestamp.
  late final Output<String> updateTime;

  Report3(
    String name, {
    ReportArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1alpha1:Report',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.reportConfigId = registerOutput<String>('reportConfigId');
    this.reportId = registerOutput<String>('reportId');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.summary = registerOutput<ReportSummaryResponse2>('summary');
    this.type = registerOutput<String>('type');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
