// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration {
  /// Policy store entity type that you want to map your users' group claim to. For example, `MyCorp::UserGroup`. A group entity type is an entity that can have a user entity type as a member.
  final pulumi.Input<String> groupEntityType;

  /// Creates a new [IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration].
  /// [groupEntityType] Policy store entity type that you want to map your users' group claim to. For example, `MyCorp::UserGroup`. A group entity type is an entity that can have a user entity type as a member.
  const IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration({
    required this.groupEntityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupEntityType': groupEntityType,
    };
  }

  factory IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration.fromMap(Map<String, dynamic> map) {
    return IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration(
      groupEntityType: pulumi.Input.fromValue(map['groupEntityType'] as String),
    );
  }
}
