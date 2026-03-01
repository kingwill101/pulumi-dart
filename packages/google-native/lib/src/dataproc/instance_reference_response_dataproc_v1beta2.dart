// ignore_for_file: unused_element, unnecessary_cast

/// A reference to a Compute Engine instance.
class InstanceReferenceResponseDataprocV1beta2 {
  /// The unique identifier of the Compute Engine instance.
  final String instanceId;

  /// The user-friendly name of the Compute Engine instance.
  final String instanceName;

  /// The public key used for sharing data with this instance.
  final String publicKey;

  /// Creates a new [InstanceReferenceResponseDataprocV1beta2].
  /// [instanceId] The unique identifier of the Compute Engine instance.
  /// [instanceName] The user-friendly name of the Compute Engine instance.
  /// [publicKey] The public key used for sharing data with this instance.
  InstanceReferenceResponseDataprocV1beta2({
    required this.instanceId,
    required this.instanceName,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'instanceName': instanceName,
      'publicKey': publicKey,
    };
  }

  factory InstanceReferenceResponseDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstanceReferenceResponseDataprocV1beta2(
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      publicKey: map['publicKey'] as String,
    );
  }
}
