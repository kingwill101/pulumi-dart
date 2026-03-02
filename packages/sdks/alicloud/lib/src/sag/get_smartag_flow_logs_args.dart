// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sag_get_smartag_flow_logs_get_smartag_flow_logs_args_doc}
/// Arguments for getSmartagFlowLogs.
/// {@endtemplate}
/// {@macro pulumi_sag_get_smartag_flow_logs_get_smartag_flow_logs_args_doc}
class GetSmartagFlowLogsArgs {
  /// The description of the flow log.
  final pulumi.Input<String>? description;
  /// A list of Flow Log IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Flow Log name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The status of the flow log. Valid values:  `Active`: The flow log is enabled. `Inactive`: The flow log is disabled.
  final pulumi.Input<String>? status;

  /// Creates a new [GetSmartagFlowLogsArgs].
  /// [description] The description of the flow log.
  /// [ids] A list of Flow Log IDs.
  /// [nameRegex] A regex string to filter results by Flow Log name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [status] The status of the flow log. Valid values:  `Active`: The flow log is enabled. `Inactive`: The flow log is disabled.
  GetSmartagFlowLogsArgs({
    this.description,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'status': ?status,
    };
  }

  factory GetSmartagFlowLogsArgs.fromMap(Map<String, dynamic> map) {
    return GetSmartagFlowLogsArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

