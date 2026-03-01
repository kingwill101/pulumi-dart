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
  PublicNetworkArgs({
    int? enablePublicNetwork,
    required String engineType,
    required String instanceId,
  }) :
      enablePublicNetwork = pulumi.Input.asOptionalInput<int>(enablePublicNetwork),
      engineType = pulumi.Input.asInput<String>(engineType),
      instanceId = pulumi.Input.asInput<String>(instanceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePublicNetwork': ?enablePublicNetwork,
      'engineType': engineType,
      'instanceId': instanceId,
    };
  }

  factory PublicNetworkArgs.fromMap(Map<String, dynamic> map) {
    return PublicNetworkArgs(
      enablePublicNetwork: map['enablePublicNetwork'] == null ? null : map['enablePublicNetwork'] as int,
      engineType: map['engineType'] as String,
      instanceId: map['instanceId'] as String,
    );
  }
}

