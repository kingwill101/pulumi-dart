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
    bool? enableDetails,
    required String flowName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? status,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      flowName = pulumi.Input.asInput<String>(flowName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      flowName: map['flowName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

