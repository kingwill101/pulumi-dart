// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_get_tunnels_get_tunnels_args_doc}
/// Arguments for getTunnels.
/// {@endtemplate}
/// {@macro pulumi_ots_get_tunnels_get_tunnels_args_doc}
class GetTunnelsArgs {
  /// A list of tunnel IDs.
  final pulumi.Input<List<String>>? ids;
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// A regex string to filter results by tunnel name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The name of OTS table.
  final pulumi.Input<String> tableName;

  /// Creates a new [GetTunnelsArgs].
  /// [ids] A list of tunnel IDs.
  /// [instanceName] The name of OTS instance.
  /// [nameRegex] A regex string to filter results by tunnel name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tableName] The name of OTS table.
  GetTunnelsArgs({
    this.ids,
    required this.instanceName,
    this.nameRegex,
    this.outputFile,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'instanceName': instanceName,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tableName': tableName,
    };
  }

  factory GetTunnelsArgs.fromMap(Map<String, dynamic> map) {
    return GetTunnelsArgs(
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      instanceName: (map['instanceName'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      tableName: (map['tableName'] as String).input(),
    );
  }
}

