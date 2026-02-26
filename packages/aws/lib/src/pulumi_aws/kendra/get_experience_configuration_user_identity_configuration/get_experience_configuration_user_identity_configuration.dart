// ignore_for_file: unused_element, unnecessary_cast

class GetExperienceConfigurationUserIdentityConfiguration {
  /// The AWS SSO field name that contains the identifiers of your users, such as their emails.
  final String identityAttributeName;

  GetExperienceConfigurationUserIdentityConfiguration({
    required this.identityAttributeName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['identityAttributeName'] = identityAttributeName;
    return map;
  }

  factory GetExperienceConfigurationUserIdentityConfiguration.fromMap(
      Map<String, dynamic> map) {
    return GetExperienceConfigurationUserIdentityConfiguration(
      identityAttributeName: map['identityAttributeName'] as String,
    );
  }
}
