// ignore_for_file: unused_element, unnecessary_cast

/// A GCP vlan attachment.
class IntakeVlanAttachmentResponse {
  /// Attachment pairing key.
  final String pairingKey;

  /// Creates a new [IntakeVlanAttachmentResponse].
  /// [pairingKey] Attachment pairing key.
  IntakeVlanAttachmentResponse({required this.pairingKey});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pairingKey': pairingKey};
  }

  factory IntakeVlanAttachmentResponse.fromMap(Map<String, dynamic> map) {
    return IntakeVlanAttachmentResponse(
      pairingKey: map['pairingKey'] as String,
    );
  }
}
