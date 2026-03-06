// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_fc_get_v3_functions_get_v3_functions_args_doc}
/// Arguments for getV3Functions.
/// {@endtemplate}
/// {@macro pulumi_fc_get_v3_functions_get_v3_functions_args_doc}
class GetV3FunctionsArgs {
  /// A list of Function IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by function name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A prefix string to filter results by function name.
  final pulumi.Input<String>? prefix;
  /// Resource Group ID
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [GetV3FunctionsArgs].
  /// [ids] A list of Function IDs.
  /// [nameRegex] A regex string to filter results by function name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [prefix] A prefix string to filter results by function name.
  /// [resourceGroupId] Resource Group ID
  const GetV3FunctionsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.prefix,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'prefix': ?prefix,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory GetV3FunctionsArgs.fromMap(Map<String, dynamic> map) {
    return GetV3FunctionsArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

