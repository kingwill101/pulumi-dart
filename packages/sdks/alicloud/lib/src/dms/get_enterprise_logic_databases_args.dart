// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dms_get_enterprise_logic_databases_get_enterprise_logic_databases_args_doc}
/// Arguments for getEnterpriseLogicDatabases.
/// {@endtemplate}
/// {@macro pulumi_dms_get_enterprise_logic_databases_get_enterprise_logic_databases_args_doc}
class GetEnterpriseLogicDatabasesArgs {
  /// A list of Logic Database IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetEnterpriseLogicDatabasesArgs].
  /// [ids] A list of Logic Database IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetEnterpriseLogicDatabasesArgs({
    this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetEnterpriseLogicDatabasesArgs.fromMap(Map<String, dynamic> map) {
    return GetEnterpriseLogicDatabasesArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

