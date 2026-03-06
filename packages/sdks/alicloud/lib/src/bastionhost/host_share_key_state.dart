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
  const HostShareKeyState({
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
      hostShareKeyId: (() { final guardedValue = map['hostShareKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostShareKeyName: (() { final guardedValue = map['hostShareKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passPhrase: (() { final guardedValue = map['passPhrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKeyFingerPrint: (() { final guardedValue = map['privateKeyFingerPrint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

