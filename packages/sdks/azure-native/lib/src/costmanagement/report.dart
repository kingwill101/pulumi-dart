import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_args.dart';
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
/// $ pulumi import azure-native:costmanagement:Report TestReport /subscriptions/{subscriptionId}/providers/Microsoft.CostManagement/reports/{reportName}
/// ```
class Report extends pulumi.CustomResource {
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

  /// Creates a new [Report].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Report]. {@macro pulumi_costmanagement_report_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Report(
    String name, {
    ReportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:costmanagement:Report',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    definition = registerOutput<ReportDefinitionResponse>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryInfo = registerOutput<ReportDeliveryInfoResponse>('deliveryInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    schedule = registerOutput<ReportScheduleResponse?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Report] resource.
  Report.reference(String urn)
    : super(
        'azure-native:costmanagement:Report',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    definition = registerOutput<ReportDefinitionResponse>('definition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deliveryInfo = registerOutput<ReportDeliveryInfoResponse>('deliveryInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportDeliveryInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    format = registerOutput<String?>('format');
    this.name = registerOutput<String>('name');
    schedule = registerOutput<ReportScheduleResponse?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReportScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
