// ignore_for_file: unused_element, unnecessary_cast

class GetServerlessSecurityConfigSamlOption {
  /// Group attribute for this SAML integration.
  final String groupAttribute;

  /// The XML IdP metadata file generated from your identity provider.
  final String metadata;

  /// Session timeout, in minutes. Minimum is 5 minutes and maximum is 720 minutes (12 hours). Default is 60 minutes.
  final int sessionTimeout;

  /// User attribute for this SAML integration.
  final String userAttribute;

  GetServerlessSecurityConfigSamlOption({
    required this.groupAttribute,
    required this.metadata,
    required this.sessionTimeout,
    required this.userAttribute,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupAttribute'] = groupAttribute;
    map['metadata'] = metadata;
    map['sessionTimeout'] = sessionTimeout;
    map['userAttribute'] = userAttribute;
    return map;
  }

  factory GetServerlessSecurityConfigSamlOption.fromMap(
      Map<String, dynamic> map) {
    return GetServerlessSecurityConfigSamlOption(
      groupAttribute: map['groupAttribute'] as String,
      metadata: map['metadata'] as String,
      sessionTimeout: map['sessionTimeout'] as int,
      userAttribute: map['userAttribute'] as String,
    );
  }
}
