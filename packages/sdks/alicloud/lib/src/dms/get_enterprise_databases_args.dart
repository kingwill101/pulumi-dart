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
  const GetEnterpriseDatabasesArgs({
    this.ids,
    required this.instanceId,
    this.nameRegex,
    this.outputFile,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

