import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_by_department_args.dart';
import 'report_definition_response.dart';
import 'report_delivery_info_response.dart';
import 'report_schedule_response.dart';

/// A report resource.
///
/// Uses Azure REST API version 2018-08-01-preview. In version 2.x of the Azure Native provider, it used API version 2018-08-01-preview.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:costmanagement:ReportByDepartment TestReport /providers/Microsoft.Billing/departments/{departmentId}/providers/Microsoft.CostManagement/reports/{reportName}
/// ```
class ReportByDepartment extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Has definition for the report.
  late final pulumi.Output<ReportDefinitionResponse> definition;
  /// Has delivery information for the report.
  late final pulumi.Output<ReportDeliveryInfoResponse> deliveryInfo;
  /// The format of the report being delivered.
  late final pulumi.Output<String?> format;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Has schedule information for the report.
  late final pulumi.Output<ReportScheduleResponse?> schedule;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ReportByDepartment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReportByDepartment]. {@macro pulumi_costmanagement_report_by_department_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReportByDepartment(
    String name, {
    ReportByDepartmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:costmanagement:ReportByDepartment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.definition = registerOutput<ReportDefinitionResponse>('definition');
    this.deliveryInfo = registerOutput<ReportDeliveryInfoResponse>('deliveryInfo');
    this.format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    this.schedule = registerOutput<ReportScheduleResponse?>('schedule');
    this.tags = registerOutput<Map<String, String>>('tags');
    this.type = registerOutput<String>('type');
  }
}
