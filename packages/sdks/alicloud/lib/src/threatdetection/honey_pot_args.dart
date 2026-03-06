// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_honey_pot_honey_pot_args_doc}
/// The set of arguments for HoneyPot.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_honey_pot_honey_pot_args_doc}
class HoneyPotArgs {
  /// The image ID of the honeypot.
  final pulumi.Input<String> honeypotImageId;
  /// Honeypot mirror name.
  final pulumi.Input<String> honeypotImageName;
  /// Honeypot custom name.
  final pulumi.Input<String> honeypotName;
  /// The ID of the honeypot management node.
  final pulumi.Input<String> nodeId;

  /// Creates a new [HoneyPotArgs].
  /// [honeypotImageId] The image ID of the honeypot.
  /// [honeypotImageName] Honeypot mirror name.
  /// [honeypotName] Honeypot custom name.
  /// [nodeId] The ID of the honeypot management node.
  const HoneyPotArgs({
    required this.honeypotImageId,
    required this.honeypotImageName,
    required this.honeypotName,
    required this.nodeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotImageId': honeypotImageId,
      'honeypotImageName': honeypotImageName,
      'honeypotName': honeypotName,
      'nodeId': nodeId,
    };
  }

  factory HoneyPotArgs.fromMap(Map<String, dynamic> map) {
    return HoneyPotArgs(
      honeypotImageId: pulumi.Input.fromValue(map['honeypotImageId'] as String),
      honeypotImageName: pulumi.Input.fromValue(map['honeypotImageName'] as String),
      honeypotName: pulumi.Input.fromValue(map['honeypotName'] as String),
      nodeId: pulumi.Input.fromValue(map['nodeId'] as String),
    );
  }
}

