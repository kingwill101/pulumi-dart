// ignore_for_file: unused_element, unnecessary_cast


/// Details of the Community CommunityTraining Identity Configuration
class IdentityConfigurationPropertiesResponse {
  /// The name of the authentication policy registered in ADB2C for the Community Training Resource
  final String? b2cAuthenticationPolicy;
  /// The name of the password reset policy registered in ADB2C for the Community Training Resource
  final String? b2cPasswordResetPolicy;
  /// The clientId of the application registered in the selected identity provider for the Community Training Resource
  final String clientId;
  /// The client secret of the application registered in the selected identity provider for the Community Training Resource
  final String clientSecret;
  /// The custom login parameters for the Community Training Resource
  final String? customLoginParameters;
  /// The domain name of the selected identity provider for the Community Training Resource
  final String domainName;
  /// The identity type of the Community Training Resource
  final String identityType;
  /// To indicate whether the Community Training Resource has Teams enabled
  final bool? teamsEnabled;
  /// The tenantId of the selected identity provider for the Community Training Resource
  final String tenantId;

  /// Creates a new [IdentityConfigurationPropertiesResponse].
  /// [b2cAuthenticationPolicy] The name of the authentication policy registered in ADB2C for the Community Training Resource
  /// [b2cPasswordResetPolicy] The name of the password reset policy registered in ADB2C for the Community Training Resource
  /// [clientId] The clientId of the application registered in the selected identity provider for the Community Training Resource
  /// [clientSecret] The client secret of the application registered in the selected identity provider for the Community Training Resource
  /// [customLoginParameters] The custom login parameters for the Community Training Resource
  /// [domainName] The domain name of the selected identity provider for the Community Training Resource
  /// [identityType] The identity type of the Community Training Resource
  /// [teamsEnabled] To indicate whether the Community Training Resource has Teams enabled
  /// [tenantId] The tenantId of the selected identity provider for the Community Training Resource
  IdentityConfigurationPropertiesResponse({
    this.b2cAuthenticationPolicy,
    this.b2cPasswordResetPolicy,
    required this.clientId,
    required this.clientSecret,
    this.customLoginParameters,
    required this.domainName,
    required this.identityType,
    this.teamsEnabled,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'b2cAuthenticationPolicy': ?b2cAuthenticationPolicy,
      'b2cPasswordResetPolicy': ?b2cPasswordResetPolicy,
      'clientId': clientId,
      'clientSecret': clientSecret,
      'customLoginParameters': ?customLoginParameters,
      'domainName': domainName,
      'identityType': identityType,
      'teamsEnabled': ?teamsEnabled,
      'tenantId': tenantId,
    };
  }

  factory IdentityConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityConfigurationPropertiesResponse(
      b2cAuthenticationPolicy: map['b2cAuthenticationPolicy'] == null ? null : map['b2cAuthenticationPolicy'] as String,
      b2cPasswordResetPolicy: map['b2cPasswordResetPolicy'] == null ? null : map['b2cPasswordResetPolicy'] as String,
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      customLoginParameters: map['customLoginParameters'] == null ? null : map['customLoginParameters'] as String,
      domainName: map['domainName'] as String,
      identityType: map['identityType'] as String,
      teamsEnabled: map['teamsEnabled'] == null ? null : map['teamsEnabled'] as bool,
      tenantId: map['tenantId'] as String,
    );
  }
}

