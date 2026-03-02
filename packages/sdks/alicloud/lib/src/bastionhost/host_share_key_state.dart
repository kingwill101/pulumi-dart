// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostShareKey resources.
class HostShareKeyState {
  /// The first ID of the resource.
  final pulumi.Input<String>? hostShareKeyId;
  /// The name of the host shared key to be added. The name can be a maximum of 128 characters in length.
  final pulumi.Input<String>? hostShareKeyName;
  /// The ID of the Bastion instance.
  final pulumi.Input<String>? instanceId;
  /// The password of the private key. The value is a Base64-encoded string.
  final pulumi.Input<String>? passPhrase;
  /// The private key. The value is a Base64-encoded string.
  final pulumi.Input<String>? privateKey;
  /// The fingerprint of the private key.
  final pulumi.Input<String>? privateKeyFingerPrint;

  /// Creates a new [HostShareKeyState].
  /// [hostShareKeyId] The first ID of the resource.
  /// [hostShareKeyName] The name of the host shared key to be added. The name can be a maximum of 128 characters in length.
  /// [instanceId] The ID of the Bastion instance.
  /// [passPhrase] The password of the private key. The value is a Base64-encoded string.
  /// [privateKey] The private key. The value is a Base64-encoded string.
  /// [privateKeyFingerPrint] The fingerprint of the private key.
  HostShareKeyState({
    this.hostShareKeyId,
    this.hostShareKeyName,
    this.instanceId,
    this.passPhrase,
    this.privateKey,
    this.privateKeyFingerPrint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostShareKeyId': ?hostShareKeyId,
      'hostShareKeyName': ?hostShareKeyName,
      'instanceId': ?instanceId,
      'passPhrase': ?passPhrase,
      'privateKey': ?privateKey,
      'privateKeyFingerPrint': ?privateKeyFingerPrint,
    };
  }

  factory HostShareKeyState.fromMap(Map<String, dynamic> map) {
    return HostShareKeyState(
      hostShareKeyId: map['hostShareKeyId'] == null ? null : (map['hostShareKeyId'] as String).input(),
      hostShareKeyName: map['hostShareKeyName'] == null ? null : (map['hostShareKeyName'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      passPhrase: map['passPhrase'] == null ? null : (map['passPhrase'] as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey'] as String).input(),
      privateKeyFingerPrint: map['privateKeyFingerPrint'] == null ? null : (map['privateKeyFingerPrint'] as String).input(),
    );
  }
}

