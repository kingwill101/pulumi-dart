// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fnf_get_executions_get_executions_args_doc}
/// Arguments for getExecutions.
/// {@endtemplate}
/// {@macro pulumi_fnf_get_executions_get_executions_args_doc}
class GetExecutionsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// The name of the flow.
  final pulumi.Input<String> flowName;
  /// A list of Execution IDs. The value formats as `<flow_name>:<execution_name>`.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Execution name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the resource. Valid values: `Running`, `Stopped`, `Succeeded`, `Failed`, `TimedOut`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetExecutionsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [flowName] The name of the flow.
  /// [ids] A list of Execution IDs. The value formats as `<flow_name>:<execution_name>`.
  /// [nameRegex] A regex string to filter results by Execution name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the resource. Valid values: `Running`, `Stopped`, `Succeeded`, `Failed`, `TimedOut`.
  GetExecutionsArgs({
    this.enableDetails,
    required this.flowName,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'flowName': flowName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetExecutionsArgs.fromMap(Map<String, dynamic> map) {
    return GetExecutionsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      flowName: (map['flowName'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

