// ignore_for_file: unused_element, unnecessary_cast

/// A GCP vlan attachment.
class IntakeVlanAttachment {
  /// Identifier of the VLAN attachment.
  final String? id;

  /// Attachment pairing key.
  final String? pairingKey;

  /// Creates a new [IntakeVlanAttachment].
  /// [id] Identifier of the VLAN attachment.
  /// [pairingKey] Attachment pairing key.
  IntakeVlanAttachment({this.id, this.pairingKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': ?id, 'pairingKey': ?pairingKey};
  }

  factory IntakeVlanAttachment.fromMap(Map<String, dynamic> map) {
    return IntakeVlanAttachment(
      id: map['id'] == null ? null : map['id'] as String,
      pairingKey: map['pairingKey'] == null
          ? null
          : map['pairingKey'] as String,
    );
  }
}
