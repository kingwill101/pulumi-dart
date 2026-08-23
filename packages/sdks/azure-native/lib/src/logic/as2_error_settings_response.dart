// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The AS2 agreement error settings.
class AS2ErrorSettingsResponse {
  /// The value indicating whether to resend message If MDN is not received.
  final pulumi.Input<bool> resendIfMDNNotReceived;
  /// The value indicating whether to suspend duplicate message.
  final pulumi.Input<bool> suspendDuplicateMessage;

  /// Creates a new [AS2ErrorSettingsResponse].
  /// [resendIfMDNNotReceived] The value indicating whether to resend message If MDN is not received.
  /// [suspendDuplicateMessage] The value indicating whether to suspend duplicate message.
  const AS2ErrorSettingsResponse({
    required this.resendIfMDNNotReceived,
    required this.suspendDuplicateMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resendIfMDNNotReceived': resendIfMDNNotReceived,
      'suspendDuplicateMessage': suspendDuplicateMessage,
    };
  }

  factory AS2ErrorSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AS2ErrorSettingsResponse(
      resendIfMDNNotReceived: pulumi.Input.fromValue(map['resendIfMDNNotReceived'] as bool),
      suspendDuplicateMessage: pulumi.Input.fromValue(map['suspendDuplicateMessage'] as bool),
    );
  }
}
