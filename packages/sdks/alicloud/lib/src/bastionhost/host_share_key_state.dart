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
    pulumi.Output<String>? hostShareKeyId,
    pulumi.Output<String>? hostShareKeyName,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? passPhrase,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? privateKeyFingerPrint,
  }) :
      hostShareKeyId = pulumi.Input.asOptionalInput<String>(hostShareKeyId),
      hostShareKeyName = pulumi.Input.asOptionalInput<String>(hostShareKeyName),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      passPhrase = pulumi.Input.asOptionalInput<String>(passPhrase),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      privateKeyFingerPrint = pulumi.Input.asOptionalInput<String>(privateKeyFingerPrint);

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
      hostShareKeyId: map['hostShareKeyId'] == null ? null : pulumi.Output.create<String>(map['hostShareKeyId'] as String),
      hostShareKeyName: map['hostShareKeyName'] == null ? null : pulumi.Output.create<String>(map['hostShareKeyName'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      passPhrase: map['passPhrase'] == null ? null : pulumi.Output.create<String>(map['passPhrase'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      privateKeyFingerPrint: map['privateKeyFingerPrint'] == null ? null : pulumi.Output.create<String>(map['privateKeyFingerPrint'] as String),
    );
  }
}

