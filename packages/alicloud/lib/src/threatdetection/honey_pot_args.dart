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
  HoneyPotArgs({
    required String honeypotImageId,
    required String honeypotImageName,
    required String honeypotName,
    required String nodeId,
  }) :
      honeypotImageId = pulumi.Input.asInput<String>(honeypotImageId),
      honeypotImageName = pulumi.Input.asInput<String>(honeypotImageName),
      honeypotName = pulumi.Input.asInput<String>(honeypotName),
      nodeId = pulumi.Input.asInput<String>(nodeId);

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
      honeypotImageId: map['honeypotImageId'] as String,
      honeypotImageName: map['honeypotImageName'] as String,
      honeypotName: map['honeypotName'] as String,
      nodeId: map['nodeId'] as String,
    );
  }
}

