// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cur_get_report_definition_get_report_definition_args_doc}
/// Arguments for getReportDefinition.
/// {@endtemplate}
/// {@macro pulumi_cur_get_report_definition_get_report_definition_args_doc}
class GetReportDefinitionArgs {
  /// Name of the report definition to match.
  final pulumi.Input<String> reportName;
  /// Map of key-value pairs assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetReportDefinitionArgs].
  /// [reportName] Name of the report definition to match.
  /// [tags] Map of key-value pairs assigned to the resource.
  GetReportDefinitionArgs({
    required pulumi.Output<String> reportName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      reportName = pulumi.Input.asInput<String>(reportName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reportName': reportName,
      'tags': ?tags,
    };
  }

  factory GetReportDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetReportDefinitionArgs(
      reportName: pulumi.Output.create<String>(map['reportName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

