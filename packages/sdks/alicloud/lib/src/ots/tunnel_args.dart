// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ots_tunnel_tunnel_args_doc}
/// The set of arguments for Tunnel.
/// {@endtemplate}
/// {@macro pulumi_ots_tunnel_tunnel_args_doc}
class TunnelArgs {
  /// The name of the OTS instance in which table will located.
  final pulumi.Input<String> instanceName;
  /// The name of the OTS table. If changed, a new table would be created.
  final pulumi.Input<String> tableName;
  /// The name of the OTS tunnel. If changed, a new tunnel would be created.
  final pulumi.Input<String> tunnelName;
  /// The type of the OTS tunnel. Only `BaseAndStream`, `BaseData` or `Stream` is allowed.
  final pulumi.Input<String> tunnelType;

  /// Creates a new [TunnelArgs].
  /// [instanceName] The name of the OTS instance in which table will located.
  /// [tableName] The name of the OTS table. If changed, a new table would be created.
  /// [tunnelName] The name of the OTS tunnel. If changed, a new tunnel would be created.
  /// [tunnelType] The type of the OTS tunnel. Only `BaseAndStream`, `BaseData` or `Stream` is allowed.
  TunnelArgs({
    required pulumi.Output<String> instanceName,
    required pulumi.Output<String> tableName,
    required pulumi.Output<String> tunnelName,
    required pulumi.Output<String> tunnelType,
  }) :
      instanceName = pulumi.Input.asInput<String>(instanceName),
      tableName = pulumi.Input.asInput<String>(tableName),
      tunnelName = pulumi.Input.asInput<String>(tunnelName),
      tunnelType = pulumi.Input.asInput<String>(tunnelType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceName': instanceName,
      'tableName': tableName,
      'tunnelName': tunnelName,
      'tunnelType': tunnelType,
    };
  }

  factory TunnelArgs.fromMap(Map<String, dynamic> map) {
    return TunnelArgs(
      instanceName: pulumi.Output.create<String>(map['instanceName'] as String),
      tableName: pulumi.Output.create<String>(map['tableName'] as String),
      tunnelName: pulumi.Output.create<String>(map['tunnelName'] as String),
      tunnelType: pulumi.Output.create<String>(map['tunnelType'] as String),
    );
  }
}

