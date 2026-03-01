// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_enterprise_databases_get_enterprise_databases_args_doc}
/// Arguments for getEnterpriseDatabases.
/// {@endtemplate}
/// {@macro pulumi_dms_get_enterprise_databases_get_enterprise_databases_args_doc}
class GetEnterpriseDatabasesArgs {
  /// A list of Database IDs.
  final pulumi.Input<List<String>>? ids;
  /// The instance ID of the target database.
  final pulumi.Input<String> instanceId;
  /// A regex string to filter the results by the database Schema Name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEnterpriseDatabasesArgs].
  /// [ids] A list of Database IDs.
  /// [instanceId] The instance ID of the target database.
  /// [nameRegex] A regex string to filter the results by the database Schema Name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEnterpriseDatabasesArgs({
    List<String>? ids,
    required String instanceId,
    String? nameRegex,
    String? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceId': instanceId,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnterpriseDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseDatabasesArgs(
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceId: map['instanceId'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

