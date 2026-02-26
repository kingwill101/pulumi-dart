import 'package:pulumi/pulumi.dart';
import 'status_response31.dart';
import 'utilization_report_args2.dart';
import 'vm_utilization_info_response2.dart';

/// Creates a new UtilizationReport.
/// Auto-naming is currently not supported for this resource.
class UtilizationReport2 extends CustomResource {
  /// The time the report was created (this refers to the time of the request, not the time the report creation completed).
  late final Output<String> createTime;

  /// The report display name, as assigned by the user.
  late final Output<String> displayName;

  /// Provides details on the state of the report in case of an error.
  late final Output<StatusResponse31> error;

  /// The point in time when the time frame ends. Notice that the time frame is counted backwards. For instance if the "frame_end_time" value is 2021/01/20 and the time frame is WEEK then the report covers the week between 2021/01/20 and 2021/01/14.
  late final Output<String> frameEndTime;
  late final Output<String> location;

  /// The report unique name.
  late final Output<String> name;
  late final Output<String> project;

  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;
  late final Output<String> sourceId;

  /// Current state of the report.
  late final Output<String> state;

  /// The time the state was last set.
  late final Output<String> stateTime;

  /// Time frame of the report.
  late final Output<String> timeFrame;

  /// Required. The ID to use for the report, which will become the final component of the reports's resource name. This value maximum length is 63 characters, and valid characters are /a-z-/. It must start with an english letter and must not end with a hyphen.
  late final Output<String> utilizationReportId;

  /// Total number of VMs included in the report.
  late final Output<int> vmCount;

  /// List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  late final Output<List<VmUtilizationInfoResponse2>> vms;

  /// Total number of VMs included in the report.
  late final Output<int> vmsCount;

  UtilizationReport2(
    String name, {
    UtilizationReportArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:UtilizationReport',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.error = Output.createUnknown<StatusResponse31>();
    this.frameEndTime = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.sourceId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.stateTime = Output.createUnknown<String>();
    this.timeFrame = Output.createUnknown<String>();
    this.utilizationReportId = Output.createUnknown<String>();
    this.vmCount = Output.createUnknown<int>();
    this.vms = Output.createUnknown<List<VmUtilizationInfoResponse2>>();
    this.vmsCount = Output.createUnknown<int>();
  }
}
