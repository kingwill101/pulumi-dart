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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> serviceName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      serviceName = pulumi.Input.asInput<String>(serviceName);

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
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

