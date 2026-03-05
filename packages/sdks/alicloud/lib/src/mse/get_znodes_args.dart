// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_get_znodes_get_znodes_args_doc}
/// Arguments for getZnodes.
/// {@endtemplate}
/// {@macro pulumi_mse_get_znodes_get_znodes_args_doc}
class GetZnodesArgs {
  /// The language type of the returned information. Valid values: `zh` or `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// The ID of the Cluster.
  final pulumi.Input<String> clusterId;
  /// A list of Znode IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Znode name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Node path.
  final pulumi.Input<String> path;

  /// Creates a new [GetZnodesArgs].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh` or `en`.
  /// [clusterId] The ID of the Cluster.
  /// [ids] A list of Znode IDs.
  /// [nameRegex] A regex string to filter results by Znode name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [path] The Node path.
  GetZnodesArgs({
    this.acceptLanguage,
    required this.clusterId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'clusterId': clusterId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'path': path,
    };
  }

  factory GetZnodesArgs.fromMap(Map<String, dynamic> map) {
    return GetZnodesArgs(
      acceptLanguage: (() { final guardedValue = map['acceptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

