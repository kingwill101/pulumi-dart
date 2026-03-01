// ignore_for_file: unused_element, unnecessary_cast


class GetHostShareKeysKey {
  /// The first ID of the resource.
  final String hostShareKeyId;
  /// The name of the host shared key.
  final String hostShareKeyName;
  /// The ID of the Host Share Key.
  final String id;
  /// The ID of the Bastion instance.
  final String instanceId;
  /// The fingerprint of the private key.
  final String privateKeyFingerPrint;

  /// Creates a new [GetHostShareKeysKey].
  /// [hostShareKeyId] The first ID of the resource.
  /// [hostShareKeyName] The name of the host shared key.
  /// [id] The ID of the Host Share Key.
  /// [instanceId] The ID of the Bastion instance.
  /// [privateKeyFingerPrint] The fingerprint of the private key.
  GetHostShareKeysKey({
    required this.hostShareKeyId,
    required this.hostShareKeyName,
    required this.id,
    required this.instanceId,
    required this.privateKeyFingerPrint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostShareKeyId': hostShareKeyId,
      'hostShareKeyName': hostShareKeyName,
      'id': id,
      'instanceId': instanceId,
      'privateKeyFingerPrint': privateKeyFingerPrint,
    };
  }

  factory GetHostShareKeysKey.fromMap(Map<String, dynamic> map) {
    return GetHostShareKeysKey(
      hostShareKeyId: map['hostShareKeyId'] as String,
      hostShareKeyName: map['hostShareKeyName'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      privateKeyFingerPrint: map['privateKeyFingerPrint'] as String,
    );
  }
}

