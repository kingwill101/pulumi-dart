// ignore_for_file: unused_element, unnecessary_cast

/// A GCP vlan attachment.
class IntakeVlanAttachmentResponse {
  /// Attachment pairing key.
  final String pairingKey;

  IntakeVlanAttachmentResponse({
    required this.pairingKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pairingKey'] = pairingKey;
    return map;
  }

  factory IntakeVlanAttachmentResponse.fromMap(Map<String, dynamic> map) {
    return IntakeVlanAttachmentResponse(
      pairingKey: map['pairingKey'] as String,
    );
  }
}
