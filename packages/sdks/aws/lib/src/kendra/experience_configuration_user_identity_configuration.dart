// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperienceConfigurationUserIdentityConfiguration {
  /// The AWS SSO field name that contains the identifiers of your users, such as their emails.
  final pulumi.Input<String> identityAttributeName;

  /// Creates a new [ExperienceConfigurationUserIdentityConfiguration].
  /// [identityAttributeName] The AWS SSO field name that contains the identifiers of your users, such as their emails.
  const ExperienceConfigurationUserIdentityConfiguration({
    required this.identityAttributeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityAttributeName': identityAttributeName,
    };
  }

  factory ExperienceConfigurationUserIdentityConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperienceConfigurationUserIdentityConfiguration(
      identityAttributeName: pulumi.Input.fromValue(map['identityAttributeName'] as String),
    );
  }
}
