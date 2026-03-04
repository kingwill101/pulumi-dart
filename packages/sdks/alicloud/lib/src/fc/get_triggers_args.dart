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
    required this.functionName,
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.serviceName,
  });

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
      functionName: pulumi.Input.fromValue(map['functionName'] as String),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
