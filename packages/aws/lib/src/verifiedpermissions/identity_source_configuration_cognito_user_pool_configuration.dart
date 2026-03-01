// ignore_for_file: unused_element, unnecessary_cast

import 'identity_source_configuration_cognito_user_pool_configuration_group_configuration.dart';

class IdentitySourceConfigurationCognitoUserPoolConfiguration {
  /// The unique application client IDs that are associated with the specified Amazon Cognito user pool.
  final List<String>? clientIds;

  /// The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source. See Group Configuration below.
  final IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration?
  groupConfiguration;

  /// The Amazon Resource Name (ARN) of the Amazon Cognito user pool that contains the identities to be authorized.
  final String userPoolArn;

  /// Creates a new [IdentitySourceConfigurationCognitoUserPoolConfiguration].
  /// [clientIds] The unique application client IDs that are associated with the specified Amazon Cognito user pool.
  /// [groupConfiguration] The type of entity that a policy store maps to groups from an Amazon Cognito user pool identity source. See Group Configuration below.
  /// [userPoolArn] The Amazon Resource Name (ARN) of the Amazon Cognito user pool that contains the identities to be authorized.
  IdentitySourceConfigurationCognitoUserPoolConfiguration({
    this.clientIds,
    this.groupConfiguration,
    required this.userPoolArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': ?clientIds,
      'groupConfiguration': ?groupConfiguration == null
          ? null
          : groupConfiguration!.toMap(),
      'userPoolArn': userPoolArn,
    };
  }

  factory IdentitySourceConfigurationCognitoUserPoolConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return IdentitySourceConfigurationCognitoUserPoolConfiguration(
      clientIds: map['clientIds'] == null
          ? null
          : (map['clientIds'] as List).cast<String>(),
      groupConfiguration: map['groupConfiguration'] == null
          ? null
          : IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration.fromMap(
              (map['groupConfiguration'] as Map).cast<String, dynamic>(),
            ),
      userPoolArn: map['userPoolArn'] as String,
    );
  }
}
