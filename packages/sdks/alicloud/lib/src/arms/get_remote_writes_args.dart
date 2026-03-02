// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_remote_writes_get_remote_writes_args_doc}
/// Arguments for getRemoteWrites.
/// {@endtemplate}
/// {@macro pulumi_arms_get_remote_writes_get_remote_writes_args_doc}
class GetRemoteWritesArgs {
  /// The ID of the Prometheus instance.
  final pulumi.Input<String> clusterId;
  /// A list of Remote Write IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Remote Write name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetRemoteWritesArgs].
  /// [clusterId] The ID of the Prometheus instance.
  /// [ids] A list of Remote Write IDs.
  /// [nameRegex] A regex string to filter results by Remote Write name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetRemoteWritesArgs({
    required this.clusterId,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetRemoteWritesArgs.fromMap(Map<String, dynamic> map) {
    return GetRemoteWritesArgs(
      clusterId: (map['clusterId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

