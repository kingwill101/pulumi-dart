// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_znode_znode_args_doc}
/// The set of arguments for Znode.
/// {@endtemplate}
/// {@macro pulumi_mse_znode_znode_args_doc}
class ZnodeArgs {
  /// The language type of the returned information. Valid values: `zh` or `en`.
  final pulumi.Input<String>? acceptLanguage;
  /// The ID of the Cluster.
  final pulumi.Input<String> clusterId;
  /// The Node data.
  final pulumi.Input<String>? data;
  /// The Node path. The value must start with a forward slash (/).
  final pulumi.Input<String> path;

  /// Creates a new [ZnodeArgs].
  /// [acceptLanguage] The language type of the returned information. Valid values: `zh` or `en`.
  /// [clusterId] The ID of the Cluster.
  /// [data] The Node data.
  /// [path] The Node path. The value must start with a forward slash (/).
  ZnodeArgs({
    this.acceptLanguage,
    required this.clusterId,
    this.data,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'clusterId': clusterId,
      'data': ?data,
      'path': path,
    };
  }

  factory ZnodeArgs.fromMap(Map<String, dynamic> map) {
    return ZnodeArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : (map['acceptLanguage']! as String).input(),
      clusterId: (map['clusterId'] as String).input(),
      data: map['data'] == null ? null : (map['data']! as String).input(),
      path: (map['path'] as String).input(),
    );
  }
}

