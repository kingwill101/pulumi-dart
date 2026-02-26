// ignore_for_file: unused_element, unnecessary_cast

import 'https_trigger_security_level.dart';

/// Describes HttpsTrigger, could be used to connect web hooks to function.
class HttpsTrigger {
  /// The security level for the function.
  final HttpsTriggerSecurityLevel? securityLevel;

  HttpsTrigger({
    this.securityLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final securityLevelValue = securityLevel;
    if (securityLevelValue != null) {
      map['securityLevel'] = securityLevelValue.value;
    }
    return map;
  }

  factory HttpsTrigger.fromMap(Map<String, dynamic> map) {
    return HttpsTrigger(
      securityLevel: map['securityLevel'] == null
          ? null
          : HttpsTriggerSecurityLevel.fromValue(map['securityLevel'] as String),
    );
  }
}
