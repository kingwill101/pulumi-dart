// ignore_for_file: unused_element, unnecessary_cast

class IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration {
  /// The name of the schema entity type that's mapped to the user pool group. Defaults to `AWS::CognitoGroup`.
  final String groupEntityType;

  IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration({
    required this.groupEntityType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['groupEntityType'] = groupEntityType;
    return map;
  }

  factory IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration.fromMap(
      Map<String, dynamic> map) {
    return IdentitySourceConfigurationCognitoUserPoolConfigurationGroupConfiguration(
      groupEntityType: map['groupEntityType'] as String,
    );
  }
}
