// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a Compute Engine instance.
class InstanceReferenceResponse {
  /// The unique identifier of the Compute Engine instance.
  final String instanceId;

  /// The user-friendly name of the Compute Engine instance.
  final String instanceName;

  /// The public ECIES key used for sharing data with this instance.
  final String publicEciesKey;

  /// The public RSA key used for sharing data with this instance.
  final String publicKey;

  /// Creates a new [InstanceReferenceResponse].
  /// [instanceId] The unique identifier of the Compute Engine instance.
  /// [instanceName] The user-friendly name of the Compute Engine instance.
  /// [publicEciesKey] The public ECIES key used for sharing data with this instance.
  /// [publicKey] The public RSA key used for sharing data with this instance.
  InstanceReferenceResponse({
    required this.instanceId,
    required this.instanceName,
    required this.publicEciesKey,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'instanceName': instanceName,
      'publicEciesKey': publicEciesKey,
      'publicKey': publicKey,
    };
  }

  factory InstanceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return InstanceReferenceResponse(
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      publicEciesKey: map['publicEciesKey'] as String,
      publicKey: map['publicKey'] as String,
    );
  }
}
