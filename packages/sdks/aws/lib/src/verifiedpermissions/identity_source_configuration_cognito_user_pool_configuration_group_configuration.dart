// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration {
  /// The name of the schema entity type that's mapped to the user pool group. Defaults to `AWS::CognitoGroup`.
  final pulumi.Input<String> groupEntityType;

  /// Creates a new [IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration].
  /// [groupEntityType] The name of the schema entity type that's mapped to the user pool group. Defaults to `AWS::CognitoGroup`.
  IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration({
    required this.groupEntityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupEntityType': groupEntityType,
    };
  }

  factory IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration(
      groupEntityType: (map['groupEntityType'] as String).input(),
    );
  }
}

