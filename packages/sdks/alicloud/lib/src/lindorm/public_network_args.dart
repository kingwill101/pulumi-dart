// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_lindorm_public_network_public_network_args_doc}
/// The set of arguments for PublicNetwork.
/// {@endtemplate}
/// {@macro pulumi_lindorm_public_network_public_network_args_doc}
class PublicNetworkArgs {
  /// Open or close the public connection. Value:
  final pulumi.Input<int>? enablePublicNetwork;
  /// Engine type, value:
  final pulumi.Input<String> engineType;
  /// Instance ID
  final pulumi.Input<String> instanceId;

  /// Creates a new [PublicNetworkArgs].
  /// [enablePublicNetwork] Open or close the public connection. Value:
  /// [engineType] Engine type, value:
  /// [instanceId] Instance ID
  const PublicNetworkArgs({
    this.enablePublicNetwork,
    required this.engineType,
    required this.instanceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePublicNetwork': ?enablePublicNetwork,
      'engineType': engineType,
      'instanceId': instanceId,
    };
  }

  factory PublicNetworkArgs.fromMap(Map<String, dynamic> map) {
    return PublicNetworkArgs(
      enablePublicNetwork: (() { final guardedValue = map['enablePublicNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      engineType: pulumi.Input.fromValue(map['engineType'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
    );
  }
}

