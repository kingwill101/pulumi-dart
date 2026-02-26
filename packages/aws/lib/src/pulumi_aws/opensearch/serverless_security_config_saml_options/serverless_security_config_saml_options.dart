// ignore_for_file: unused_element, unnecessary_cast

class ServerlessSecurityConfigSamlOptions {
  /// Group attribute for this SAML integration.
  final String? groupAttribute;

  /// The XML IdP metadata file generated from your identity provider.
  final String metadata;

  /// Session timeout, in minutes. Minimum is 5 minutes and maximum is 720 minutes (12 hours). Default is 60 minutes.
  final int? sessionTimeout;

  /// User attribute for this SAML integration.
  final String? userAttribute;

  ServerlessSecurityConfigSamlOptions({
    this.groupAttribute,
    required this.metadata,
    this.sessionTimeout,
    this.userAttribute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final groupAttributeValue = groupAttribute;
    if (groupAttributeValue != null) {
      map['groupAttribute'] = groupAttributeValue;
    }
    map['metadata'] = metadata;
    final sessionTimeoutValue = sessionTimeout;
    if (sessionTimeoutValue != null) {
      map['sessionTimeout'] = sessionTimeoutValue;
    }
    final userAttributeValue = userAttribute;
    if (userAttributeValue != null) {
      map['userAttribute'] = userAttributeValue;
    }
    return map;
  }

  factory ServerlessSecurityConfigSamlOptions.fromMap(
      Map<String, dynamic> map) {
    return ServerlessSecurityConfigSamlOptions(
      groupAttribute: map['groupAttribute'] == null
          ? null
          : map['groupAttribute'] as String,
      metadata: map['metadata'] as String,
      sessionTimeout:
          map['sessionTimeout'] == null ? null : map['sessionTimeout'] as int,
      userAttribute:
          map['userAttribute'] == null ? null : map['userAttribute'] as String,
    );
  }
}
