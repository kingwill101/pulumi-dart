// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_run_response.dart';

/// Result of listing the run history of an export.
class ExportExecutionListResultResponse {
  /// A list of export runs.
  final pulumi.Input<List<ExportRunResponse>> value;

  /// Creates a new [ExportExecutionListResultResponse].
  /// [value] A list of export runs.
  const ExportExecutionListResultResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': pulumi.Input.mapInputValue<List<ExportRunResponse>, List<Map<String, dynamic>>>(value, (value) => pulumi.Input.encodeList<ExportRunResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExportExecutionListResultResponse.fromMap(Map<String, dynamic> map) {
    return ExportExecutionListResultResponse(
      value: pulumi.Input.fromValue(pulumi.Input.decodeList<ExportRunResponse>(map['value']!, (value) => ExportRunResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
