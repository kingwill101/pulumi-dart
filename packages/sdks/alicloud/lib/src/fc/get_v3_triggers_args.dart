// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_get_v3_triggers_get_v3_triggers_args_doc}
/// Arguments for getV3Triggers.
/// {@endtemplate}
/// {@macro pulumi_fc_get_v3_triggers_get_v3_triggers_args_doc}
class GetV3TriggersArgs {
  /// Function Name
  final pulumi.Input<String> functionName;
  /// A list of Trigger IDs. The value is formulated as `&lt;function_name&gt;:&lt;trigger_name&gt;`.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Group Metric Rule name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetV3TriggersArgs].
  /// [functionName] Function Name
  /// [ids] A list of Trigger IDs. The value is formulated as `&lt;function_name&gt;:&lt;trigger_name&gt;`.
  /// [nameRegex] A regex string to filter results by Group Metric Rule name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetV3TriggersArgs({
    required this.functionName,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

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
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

