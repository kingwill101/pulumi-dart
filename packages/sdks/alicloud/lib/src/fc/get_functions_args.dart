// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_get_functions_get_functions_args_doc}
/// Arguments for getFunctions.
/// {@endtemplate}
/// {@macro pulumi_fc_get_functions_get_functions_args_doc}
class GetFunctionsArgs {
  /// A list of functions ids.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by function name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Name of the service that contains the functions to find.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetFunctionsArgs].
  /// [ids] A list of functions ids.
  /// [nameRegex] A regex string to filter results by function name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceName] Name of the service that contains the functions to find.
  GetFunctionsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'serviceName': serviceName,
    };
  }

  factory GetFunctionsArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionsArgs(
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
