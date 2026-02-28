// ignore_for_file: unused_element, unnecessary_cast

class SecurityProfileThreatPreventionProfileAntivirusOverride {
  /// Threat action override. For some threat types, only a subset of actions applies.
  /// Possible values are: `ALERT`, `ALLOW`, `DEFAULT_ACTION`, `DENY`.
  final String action;

  /// Required protocol to match.
  /// Possible values are: `SMTP`, `SMB`, `POP3`, `IMAP`, `HTTP2`, `HTTP`, `FTP`.
  final String protocol;

  /// Creates a new [SecurityProfileThreatPreventionProfileAntivirusOverride].
  /// [action] Threat action override. For some threat types, only a subset of actions applies.
  /// [protocol] Required protocol to match.
  SecurityProfileThreatPreventionProfileAntivirusOverride({
    required this.action,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    map['protocol'] = protocol;
    return map;
  }

  factory SecurityProfileThreatPreventionProfileAntivirusOverride.fromMap(
      Map<String, dynamic> map) {
    return SecurityProfileThreatPreventionProfileAntivirusOverride(
      action: map['action'] as String,
      protocol: map['protocol'] as String,
    );
  }
}
