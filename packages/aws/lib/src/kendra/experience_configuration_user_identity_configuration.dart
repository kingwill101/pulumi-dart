// ignore_for_file: unused_element, unnecessary_cast

class ExperienceConfigurationUserIdentityConfiguration {
  /// The AWS SSO field name that contains the identifiers of your users, such as their emails.
  final String identityAttributeName;

  /// Creates a new [ExperienceConfigurationUserIdentityConfiguration].
  /// [identityAttributeName] The AWS SSO field name that contains the identifiers of your users, such as their emails.
  ExperienceConfigurationUserIdentityConfiguration({
    required this.identityAttributeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identityAttributeName': identityAttributeName};
  }

  factory ExperienceConfigurationUserIdentityConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExperienceConfigurationUserIdentityConfiguration(
      identityAttributeName: map['identityAttributeName'] as String,
    );
  }
}
