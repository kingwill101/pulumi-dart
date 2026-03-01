// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portal_get_console_args_doc}
/// Arguments for getConsole.
/// {@endtemplate}
/// {@macro pulumi_portal_get_console_args_doc}
class GetConsoleArgs {
  /// The name of the console
  final pulumi.Input<String> consoleName;

  /// Creates a new [GetConsoleArgs].
  /// [consoleName] The name of the console
  GetConsoleArgs({
    required String consoleName,
  }) :
      consoleName = pulumi.Input.asInput<String>(consoleName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleName': consoleName,
    };
  }

  factory GetConsoleArgs.fromMap(Map<String, dynamic> map) {
    return GetConsoleArgs(
      consoleName: map['consoleName'] as String,
    );
  }
}

