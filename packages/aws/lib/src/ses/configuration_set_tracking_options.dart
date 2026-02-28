// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetTrackingOptions {
  /// Custom subdomain that is used to redirect email recipients to the Amazon SES event tracking domain.
  final String? customRedirectDomain;

  /// Creates a new [ConfigurationSetTrackingOptions].
  /// [customRedirectDomain] Custom subdomain that is used to redirect email recipients to the Amazon SES event tracking domain.
  ConfigurationSetTrackingOptions({
    this.customRedirectDomain,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customRedirectDomainValue = customRedirectDomain;
    if (customRedirectDomainValue != null) {
      map['customRedirectDomain'] = customRedirectDomainValue;
    }
    return map;
  }

  factory ConfigurationSetTrackingOptions.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetTrackingOptions(
      customRedirectDomain: map['customRedirectDomain'] == null
          ? null
          : map['customRedirectDomain'] as String,
    );
  }
}
