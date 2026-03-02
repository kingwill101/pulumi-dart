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
      acceptLanguage: map['acceptLanguage'] == null ? null : (map['acceptLanguage']! as String).input(),
      clusterId: (map['clusterId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}

