import 'package:pulumi/pulumi.dart';
import 'google_cloud_apigee_v1_security_report_metadata_response.dart';
import 'google_cloud_apigee_v1_security_report_result_metadata_response.dart';
import 'host_security_report_args.dart';

/// Submit a query at host level to be processed in the background. If the submission of the query succeeds, the API returns a 201 status and an ID that refer to the query. In addition to the HTTP status 201, the `state` of "enqueued" means that the request succeeded.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class HostSecurityReport extends CustomResource {
  /// Creation time of the query.
  late final Output<String> created;

  /// Display Name specified by the user.
  late final Output<String> displayName;

  /// Hostname is available only when query is executed at host level.
  late final Output<String> envgroupHostname;

  /// Error is set when query fails.
  late final Output<String> error;

  /// ExecutionTime is available only after the query is completed.
  late final Output<String> executionTime;
  late final Output<String> organizationId;

  /// Contains information like metrics, dimenstions etc of the Security Report.
  late final Output<GoogleCloudApigeeV1SecurityReportMetadataResponse>
      queryParams;

  /// Report Definition ID.
  late final Output<String> reportDefinitionId;

  /// Result is available only after the query is completed.
  late final Output<GoogleCloudApigeeV1SecurityReportResultMetadataResponse>
      result;

  /// ResultFileSize is available only after the query is completed.
  late final Output<String> resultFileSize;

  /// ResultRows is available only after the query is completed.
  late final Output<String> resultRows;

  /// Self link of the query. Example: `/organizations/myorg/environments/myenv/securityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd` or following format if query is running at host level: `/organizations/myorg/hostSecurityReports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  late final Output<String> self;

  /// Query state could be "enqueued", "running", "completed", "expired" and "failed".
  late final Output<String> state;

  /// Last updated timestamp for the query.
  late final Output<String> updated;

  HostSecurityReport(
    String name, {
    HostSecurityReportArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:HostSecurityReport',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.created = registerOutput<String>('created');
    this.displayName = registerOutput<String>('displayName');
    this.envgroupHostname = registerOutput<String>('envgroupHostname');
    this.error = registerOutput<String>('error');
    this.executionTime = registerOutput<String>('executionTime');
    this.organizationId = registerOutput<String>('organizationId');
    this.queryParams =
        registerOutput<GoogleCloudApigeeV1SecurityReportMetadataResponse>(
            'queryParams');
    this.reportDefinitionId = registerOutput<String>('reportDefinitionId');
    this.result =
        registerOutput<GoogleCloudApigeeV1SecurityReportResultMetadataResponse>(
            'result');
    this.resultFileSize = registerOutput<String>('resultFileSize');
    this.resultRows = registerOutput<String>('resultRows');
    this.self = registerOutput<String>('self');
    this.state = registerOutput<String>('state');
    this.updated = registerOutput<String>('updated');
  }
}
