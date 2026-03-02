// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHostShareKeysKey {
  /// The first ID of the resource.
  final pulumi.Input<String> hostShareKeyId;
  /// The name of the host shared key.
  final pulumi.Input<String> hostShareKeyName;
  /// The ID of the Host Share Key.
  final pulumi.Input<String> id;
  /// The ID of the Bastion instance.
  final pulumi.Input<String> instanceId;
  /// The fingerprint of the private key.
  final pulumi.Input<String> privateKeyFingerPrint;

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
      hostShareKeyId: (map['hostShareKeyId'] as String).input(),
      hostShareKeyName: (map['hostShareKeyName'] as String).input(),
      id: (map['id'] as String).input(),
      instanceId: (map['instanceId'] as String).input(),
      privateKeyFingerPrint: (map['privateKeyFingerPrint'] as String).input(),
    );
  }
}

