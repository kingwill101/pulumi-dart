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
  GetV3FunctionsArgs({
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? prefix,
    String? resourceGroupId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      prefix = pulumi.Input.asOptionalInput<String>(prefix),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
    );
  }
}

