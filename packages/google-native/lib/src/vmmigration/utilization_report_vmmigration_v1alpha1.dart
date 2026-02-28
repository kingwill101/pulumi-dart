import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_response_vmmigration_v1alpha1.dart';
import 'utilization_report_vmmigration_v1alpha1_args.dart';
import 'vm_utilization_info_response_vmmigration_v1alpha1.dart';

/// Creates a new UtilizationReport.
/// Auto-naming is currently not supported for this resource.
class UtilizationReportVmmigrationV1alpha1 extends pulumi.CustomResource {
  /// The time the report was created (this refers to the time of the request, not the time the report creation completed).
  late final pulumi.Output<String> createTime;
  /// The report display name, as assigned by the user.
  late final pulumi.Output<String> displayName;
  /// Provides details on the state of the report in case of an error.
  late final pulumi.Output<StatusResponseVmmigrationV1alpha1> error;
  /// The point in time when the time frame ends. Notice that the time frame is counted backwards. For instance if the "frame_end_time" value is 2021/01/20 and the time frame is WEEK then the report covers the week between 2021/01/20 and 2021/01/14.
  late final pulumi.Output<String> frameEndTime;
  late final pulumi.Output<String> location;
  /// The report unique name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  late final pulumi.Output<String> sourceId;
  /// Current state of the report.
  late final pulumi.Output<String> state;
  /// The time the state was last set.
  late final pulumi.Output<String> stateTime;
  /// Time frame of the report.
  late final pulumi.Output<String> timeFrame;
  /// Required. The ID to use for the report, which will become the final component of the reports's resource name. This value maximum length is 63 characters, and valid characters are /a-z-/. It must start with an english letter and must not end with a hyphen.
  late final pulumi.Output<String> utilizationReportId;
  /// Total number of VMs included in the report.
  late final pulumi.Output<int> vmCount;
  /// List of utilization information per VM. When sent as part of the request, the "vm_id" field is used in order to specify which VMs to include in the report. In that case all other fields are ignored.
  late final pulumi.Output<List<VmUtilizationInfoResponseVmmigrationV1alpha1>> vms;
  /// Total number of VMs included in the report.
  late final pulumi.Output<int> vmsCount;

  /// Creates a new [UtilizationReportVmmigrationV1alpha1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UtilizationReportVmmigrationV1alpha1]. {@macro pulumi_vmmigration_v1alpha1_utilization_report_vmmigration_v1alpha1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UtilizationReportVmmigrationV1alpha1(
    String name, {
    UtilizationReportVmmigrationV1alpha1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmmigration/v1alpha1:UtilizationReport',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.error = registerOutput<StatusResponseVmmigrationV1alpha1>('error');
    this.frameEndTime = registerOutput<String>('frameEndTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.sourceId = registerOutput<String>('sourceId');
    this.state = registerOutput<String>('state');
    this.stateTime = registerOutput<String>('stateTime');
    this.timeFrame = registerOutput<String>('timeFrame');
    this.utilizationReportId = registerOutput<String>('utilizationReportId');
    this.vmCount = registerOutput<int>('vmCount');
    this.vms = registerOutput<List<VmUtilizationInfoResponseVmmigrationV1alpha1>>('vms');
    this.vmsCount = registerOutput<int>('vmsCount');
  }
}
