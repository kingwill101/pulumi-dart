// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExperienceConfigurationUserIdentityConfiguration {
  /// The AWS SSO field name that contains the identifiers of your users, such as their emails.
  final pulumi.Input<String> identityAttributeName;

  /// Creates a new [GetExperienceConfigurationUserIdentityConfiguration].
  /// [identityAttributeName] The AWS SSO field name that contains the identifiers of your users, such as their emails.
  GetExperienceConfigurationUserIdentityConfiguration({
    required this.identityAttributeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityAttributeName': identityAttributeName,
    };
  }

  factory GetExperienceConfigurationUserIdentityConfiguration.fromMap(Map<String, dynamic> map) {
    return GetExperienceConfigurationUserIdentityConfiguration(
      identityAttributeName: pulumi.Input.fromValue(map['identityAttributeName'] as String),
    );
  }
}

