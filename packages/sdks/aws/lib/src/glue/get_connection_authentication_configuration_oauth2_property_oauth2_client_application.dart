// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication {
  /// Reference to the AWS managed client application.
  final pulumi.Input<String> awsManagedClientApplicationReference;
  /// Client ID of the user-managed client application.
  final pulumi.Input<String> userManagedClientApplicationClientId;

  /// Creates a new [GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication].
  /// [awsManagedClientApplicationReference] Reference to the AWS managed client application.
  /// [userManagedClientApplicationClientId] Client ID of the user-managed client application.
  const GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication({
    required this.awsManagedClientApplicationReference,
    required this.userManagedClientApplicationClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsManagedClientApplicationReference': awsManagedClientApplicationReference,
      'userManagedClientApplicationClientId': userManagedClientApplicationClientId,
    };
  }

  factory GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication.fromMap(Map<String, dynamic> map) {
    return GetConnectionAuthenticationConfigurationOauth2PropertyOauth2ClientApplication(
      awsManagedClientApplicationReference: pulumi.Input.fromValue(map['awsManagedClientApplicationReference'] as String),
      userManagedClientApplicationClientId: pulumi.Input.fromValue(map['userManagedClientApplicationClientId'] as String),
    );
  }
}
