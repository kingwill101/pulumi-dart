// ignore_for_file: unused_element, unnecessary_cast


class GetHoneyPotsPot {
  /// Honeypot ID.
  final String honeypotId;
  /// The image ID of the honeypot.
  final String honeypotImageId;
  /// Honeypot mirror name.
  final String honeypotImageName;
  /// Honeypot custom name.
  final String honeypotName;
  /// Honeypot ID. The value is the same as `honeypot_id`.
  final String id;
  /// The ID of the honeypot management node.
  final String nodeId;
  /// The custom parameter ID of honeypot.
  final String presetId;
  /// Honeypot status.
  final List<String> states;
  /// The status of the resource
  final String status;

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
      honeypotId: map['honeypotId'] as String,
      honeypotImageId: map['honeypotImageId'] as String,
      honeypotImageName: map['honeypotImageName'] as String,
      honeypotName: map['honeypotName'] as String,
      id: map['id'] as String,
      nodeId: map['nodeId'] as String,
      presetId: map['presetId'] as String,
      states: (map['states'] as List).cast<String>(),
      status: map['status'] as String,
    );
  }
}

