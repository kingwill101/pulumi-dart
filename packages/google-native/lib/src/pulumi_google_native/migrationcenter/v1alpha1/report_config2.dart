import 'package:pulumi/pulumi.dart';
import 'report_config_args2.dart';
import 'report_config_group_preference_set_assignment_response2.dart';

/// Creates a report configuration.
/// Auto-naming is currently not supported for this resource.
class ReportConfig2 extends CustomResource {
  /// The timestamp when the resource was created.
  late final Output<String> createTime;

  /// Free-text description.
  late final Output<String> description;

  /// User-friendly display name. Maximum length is 63 characters.
  late final Output<String> displayName;

  /// Collection of combinations of groups and preference sets.
  late final Output<List<ReportConfigGroupPreferenceSetAssignmentResponse2>>
      groupPreferencesetAssignments;
  late final Output<String> location;

  /// Name of resource.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. User specified ID for the report config. It will become the last component of the report config name. The ID must be unique within the project, must conform with RFC-1034, is restricted to lower-cased letters, and has a maximum length of 63 characters. The ID must match the regular expression: [a-z]([a-z0-9-]{0,61}[a-z0-9])?.
  late final Output<String> reportConfigId;

  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The timestamp when the resource was last updated.
  late final Output<String> updateTime;

  ReportConfig2(
    String name, {
    ReportConfigArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:migrationcenter/v1alpha1:ReportConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.groupPreferencesetAssignments = Output.createUnknown<
        List<ReportConfigGroupPreferenceSetAssignmentResponse2>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reportConfigId = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.updateTime = Output.createUnknown<String>();
  }
}
