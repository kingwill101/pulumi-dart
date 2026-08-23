// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the Community CommunityTraining Identity Configuration
class IdentityConfigurationProperties {
  /// The name of the authentication policy registered in ADB2C for the Community Training Resource
  final pulumi.Input<String>? b2cAuthenticationPolicy;
  /// The name of the password reset policy registered in ADB2C for the Community Training Resource
  final pulumi.Input<String>? b2cPasswordResetPolicy;
  /// The clientId of the application registered in the selected identity provider for the Community Training Resource
  final pulumi.Input<String> clientId;
  /// The client secret of the application registered in the selected identity provider for the Community Training Resource
  final pulumi.Input<String> clientSecret;
  /// The custom login parameters for the Community Training Resource
  final pulumi.Input<String>? customLoginParameters;
  /// The domain name of the selected identity provider for the Community Training Resource
  final pulumi.Input<String> domainName;
  /// The identity type of the Community Training Resource
  final pulumi.Input<String> identityType;
  /// To indicate whether the Community Training Resource has Teams enabled
  final pulumi.Input<bool>? teamsEnabled;
  /// The tenantId of the selected identity provider for the Community Training Resource
  final pulumi.Input<String> tenantId;

  /// Creates a new [IdentityConfigurationProperties].
  /// [b2cAuthenticationPolicy] The name of the authentication policy registered in ADB2C for the Community Training Resource
  /// [b2cPasswordResetPolicy] The name of the password reset policy registered in ADB2C for the Community Training Resource
  /// [clientId] The clientId of the application registered in the selected identity provider for the Community Training Resource
  /// [clientSecret] The client secret of the application registered in the selected identity provider for the Community Training Resource
  /// [customLoginParameters] The custom login parameters for the Community Training Resource
  /// [domainName] The domain name of the selected identity provider for the Community Training Resource
  /// [identityType] The identity type of the Community Training Resource
  /// [teamsEnabled] To indicate whether the Community Training Resource has Teams enabled
  /// [tenantId] The tenantId of the selected identity provider for the Community Training Resource
  const IdentityConfigurationProperties({
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

  factory IdentityConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return IdentityConfigurationProperties(
      b2cAuthenticationPolicy: (() { final guardedValue = map['b2cAuthenticationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      b2cPasswordResetPolicy: (() { final guardedValue = map['b2cPasswordResetPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      customLoginParameters: (() { final guardedValue = map['customLoginParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainName: pulumi.Input.fromValue(map['domainName'] as String),
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
      teamsEnabled: (() { final guardedValue = map['teamsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
