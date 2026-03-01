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
    pulumi.Output<String>? honeypotId,
    pulumi.Output<String>? honeypotImageId,
    pulumi.Output<String>? honeypotImageName,
    pulumi.Output<String>? honeypotName,
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? presetId,
    pulumi.Output<List<String>>? states,
    pulumi.Output<String>? status,
  }) :
      honeypotId = pulumi.Input.asOptionalInput<String>(honeypotId),
      honeypotImageId = pulumi.Input.asOptionalInput<String>(honeypotImageId),
      honeypotImageName = pulumi.Input.asOptionalInput<String>(honeypotImageName),
      honeypotName = pulumi.Input.asOptionalInput<String>(honeypotName),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      presetId = pulumi.Input.asOptionalInput<String>(presetId),
      states = pulumi.Input.asOptionalInput<List<String>>(states),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      honeypotId: map['honeypotId'] == null ? null : pulumi.Output.create<String>(map['honeypotId'] as String),
      honeypotImageId: map['honeypotImageId'] == null ? null : pulumi.Output.create<String>(map['honeypotImageId'] as String),
      honeypotImageName: map['honeypotImageName'] == null ? null : pulumi.Output.create<String>(map['honeypotImageName'] as String),
      honeypotName: map['honeypotName'] == null ? null : pulumi.Output.create<String>(map['honeypotName'] as String),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      presetId: map['presetId'] == null ? null : pulumi.Output.create<String>(map['presetId'] as String),
      states: map['states'] == null ? null : pulumi.Output.create<List<String>>((map['states'] as List).cast<String>()),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

