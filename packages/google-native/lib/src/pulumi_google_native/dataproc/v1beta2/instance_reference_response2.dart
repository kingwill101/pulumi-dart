// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a Compute Engine instance.
class InstanceReferenceResponse2 {
  /// The unique identifier of the Compute Engine instance.
  final String instanceId;

  /// The user-friendly name of the Compute Engine instance.
  final String instanceName;

  /// The public key used for sharing data with this instance.
  final String publicKey;

  InstanceReferenceResponse2({
    required this.instanceId,
    required this.instanceName,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['instanceName'] = instanceName;
    map['publicKey'] = publicKey;
    return map;
  }

  factory InstanceReferenceResponse2.fromMap(Map<String, dynamic> map) {
    return InstanceReferenceResponse2(
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      publicKey: map['publicKey'] as String,
    );
  }
}
