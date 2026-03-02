// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HoneyPot resources.
class HoneyPotState {
  /// Honeypot ID.
  final pulumi.Input<String>? honeypotId;
  /// The image ID of the honeypot.
  final pulumi.Input<String>? honeypotImageId;
  /// Honeypot mirror name.
  final pulumi.Input<String>? honeypotImageName;
  /// Honeypot custom name.
  final pulumi.Input<String>? honeypotName;
  /// The ID of the honeypot management node.
  final pulumi.Input<String>? nodeId;
  /// The custom parameter ID of honeypot.
  final pulumi.Input<String>? presetId;
  /// Honeypot status.
  final pulumi.Input<List<String>>? states;
  /// The status of the resource.
  final pulumi.Input<String>? status;

  /// Creates a new [HoneyPotState].
  /// [honeypotId] Honeypot ID.
  /// [honeypotImageId] The image ID of the honeypot.
  /// [honeypotImageName] Honeypot mirror name.
  /// [honeypotName] Honeypot custom name.
  /// [nodeId] The ID of the honeypot management node.
  /// [presetId] The custom parameter ID of honeypot.
  /// [states] Honeypot status.
  /// [status] The status of the resource.
  HoneyPotState({
    this.honeypotId,
    this.honeypotImageId,
    this.honeypotImageName,
    this.honeypotName,
    this.nodeId,
    this.presetId,
    this.states,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotId': ?honeypotId,
      'honeypotImageId': ?honeypotImageId,
      'honeypotImageName': ?honeypotImageName,
      'honeypotName': ?honeypotName,
      'nodeId': ?nodeId,
      'presetId': ?presetId,
      'states': ?states,
      'status': ?status,
    };
  }

  factory HoneyPotState.fromMap(Map<String, dynamic> map) {
    return HoneyPotState(
      honeypotId: map['honeypotId'] == null ? null : (map['honeypotId'] as String).input(),
      honeypotImageId: map['honeypotImageId'] == null ? null : (map['honeypotImageId'] as String).input(),
      honeypotImageName: map['honeypotImageName'] == null ? null : (map['honeypotImageName'] as String).input(),
      honeypotName: map['honeypotName'] == null ? null : (map['honeypotName'] as String).input(),
      nodeId: map['nodeId'] == null ? null : (map['nodeId'] as String).input(),
      presetId: map['presetId'] == null ? null : (map['presetId'] as String).input(),
      states: map['states'] == null ? null : ((map['states'] as List).cast<String>()).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

