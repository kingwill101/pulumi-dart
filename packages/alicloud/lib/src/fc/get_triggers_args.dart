// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_get_triggers_get_triggers_args_doc}
/// Arguments for getTriggers.
/// {@endtemplate}
/// {@macro pulumi_fc_get_triggers_get_triggers_args_doc}
class GetTriggersArgs {
  /// FC function name.
  final pulumi.Input<String> functionName;
  /// A list of FC triggers ids.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by FC trigger name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// FC service name.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetTriggersArgs].
  /// [functionName] FC function name.
  /// [ids] A list of FC triggers ids.
  /// [nameRegex] A regex string to filter results by FC trigger name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceName] FC service name.
  GetTriggersArgs({
    required String functionName,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    required String serviceName,
  }) :
      functionName = pulumi.Input.asInput<String>(functionName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': functionName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'serviceName': serviceName,
    };
  }

  factory GetTriggersArgs.fromMap(Map<String, dynamic> map) {
    return GetTriggersArgs(
      functionName: map['functionName'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

