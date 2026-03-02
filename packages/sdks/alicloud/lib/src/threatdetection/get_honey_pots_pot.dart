// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHoneyPotsPot {
  /// Honeypot ID.
  final pulumi.Input<String> honeypotId;
  /// The image ID of the honeypot.
  final pulumi.Input<String> honeypotImageId;
  /// Honeypot mirror name.
  final pulumi.Input<String> honeypotImageName;
  /// Honeypot custom name.
  final pulumi.Input<String> honeypotName;
  /// Honeypot ID. The value is the same as `honeypot_id`.
  final pulumi.Input<String> id;
  /// The ID of the honeypot management node.
  final pulumi.Input<String> nodeId;
  /// The custom parameter ID of honeypot.
  final pulumi.Input<String> presetId;
  /// Honeypot status.
  final pulumi.Input<List<String>> states;
  /// The status of the resource
  final pulumi.Input<String> status;

  /// Creates a new [GetHoneyPotsPot].
  /// [honeypotId] Honeypot ID.
  /// [honeypotImageId] The image ID of the honeypot.
  /// [honeypotImageName] Honeypot mirror name.
  /// [honeypotName] Honeypot custom name.
  /// [id] Honeypot ID. The value is the same as `honeypot_id`.
  /// [nodeId] The ID of the honeypot management node.
  /// [presetId] The custom parameter ID of honeypot.
  /// [states] Honeypot status.
  /// [status] The status of the resource
  GetHoneyPotsPot({
    required this.honeypotId,
    required this.honeypotImageId,
    required this.honeypotImageName,
    required this.honeypotName,
    required this.id,
    required this.nodeId,
    required this.presetId,
    required this.states,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'honeypotId': honeypotId,
      'honeypotImageId': honeypotImageId,
      'honeypotImageName': honeypotImageName,
      'honeypotName': honeypotName,
      'id': id,
      'nodeId': nodeId,
      'presetId': presetId,
      'states': states,
      'status': status,
    };
  }

  factory GetHoneyPotsPot.fromMap(Map<String, dynamic> map) {
    return GetHoneyPotsPot(
      honeypotId: (map['honeypotId'] as String).input(),
      honeypotImageId: (map['honeypotImageId'] as String).input(),
      honeypotImageName: (map['honeypotImageName'] as String).input(),
      honeypotName: (map['honeypotName'] as String).input(),
      id: (map['id'] as String).input(),
      nodeId: (map['nodeId'] as String).input(),
      presetId: (map['presetId'] as String).input(),
      states: ((map['states'] as List).cast<String>()).input(),
      status: (map['status'] as String).input(),
    );
  }
}

