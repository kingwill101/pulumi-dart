// ignore_for_file: unused_element, unnecessary_cast


/// Properties specific to Single Sign On Resource
class LiftrBaseSingleSignOnPropertiesV2 {
  /// List of AAD domains fetched from Microsoft Graph for user.
  final List<String>? aadDomains;
  /// AAD enterprise application Id used to setup SSO
  final String? enterpriseAppId;
  /// State of the Single Sign On for the resource
  final String? state;
  /// Type of Single Sign-On mechanism being used
  final String type;
  /// URL for SSO to be used by the partner to redirect the user to their system
  final String? url;

  /// Creates a new [LiftrBaseSingleSignOnPropertiesV2].
  /// [aadDomains] List of AAD domains fetched from Microsoft Graph for user.
  /// [enterpriseAppId] AAD enterprise application Id used to setup SSO
  /// [state] State of the Single Sign On for the resource
  /// [type] Type of Single Sign-On mechanism being used
  /// [url] URL for SSO to be used by the partner to redirect the user to their system
  LiftrBaseSingleSignOnPropertiesV2({
    this.aadDomains,
    this.enterpriseAppId,
    this.state,
    required this.type,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadDomains': ?aadDomains,
      'enterpriseAppId': ?enterpriseAppId,
      'state': ?state,
      'type': type,
      'url': ?url,
    };
  }

  factory LiftrBaseSingleSignOnPropertiesV2.fromMap(Map<String, dynamic> map) {
    return LiftrBaseSingleSignOnPropertiesV2(
      aadDomains: map['aadDomains'] == null ? null : (map['aadDomains'] as List).cast<String>(),
      enterpriseAppId: map['enterpriseAppId'] == null ? null : map['enterpriseAppId'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      type: map['type'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

