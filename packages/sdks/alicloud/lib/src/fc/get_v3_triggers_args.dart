// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_get_v3_triggers_get_v3_triggers_args_doc}
/// Arguments for getV3Triggers.
/// {@endtemplate}
/// {@macro pulumi_fc_get_v3_triggers_get_v3_triggers_args_doc}
class GetV3TriggersArgs {
  /// Function Name
  final pulumi.Input<String> functionName;
  /// A list of Trigger IDs. The value is formulated as `<function_name>:<trigger_name>`.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetV3TriggersArgs].
  /// [functionName] Function Name
  /// [ids] A list of Trigger IDs. The value is formulated as `<function_name>:<trigger_name>`.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetV3TriggersArgs({
    required pulumi.Output<String> functionName,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetV3TriggersArgs.fromMap(Map<String, dynamic> map) {
    return GetV3TriggersArgs(
      functionName: pulumi.Output.create<String>(map['functionName'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

