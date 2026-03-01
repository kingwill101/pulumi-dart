// ignore_for_file: unused_element, unnecessary_cast


/// The AS2 agreement error settings.
class AS2ErrorSettings {
  /// The value indicating whether to resend message If MDN is not received.
  final bool resendIfMDNNotReceived;
  /// The value indicating whether to suspend duplicate message.
  final bool suspendDuplicateMessage;

  /// Creates a new [AS2ErrorSettings].
  /// [resendIfMDNNotReceived] The value indicating whether to resend message If MDN is not received.
  /// [suspendDuplicateMessage] The value indicating whether to suspend duplicate message.
  AS2ErrorSettings({
    required this.resendIfMDNNotReceived,
    required this.suspendDuplicateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resendIfMDNNotReceived': resendIfMDNNotReceived,
      'suspendDuplicateMessage': suspendDuplicateMessage,
    };
  }

  factory AS2ErrorSettings.fromMap(Map<String, dynamic> map) {
    return AS2ErrorSettings(
      resendIfMDNNotReceived: map['resendIfMDNNotReceived'] as bool,
      suspendDuplicateMessage: map['suspendDuplicateMessage'] as bool,
    );
  }
}

