// ignore_for_file: unused_element, unnecessary_cast

import 'experience_configuration_content_source_configuration.dart';
import 'experience_configuration_user_identity_configuration.dart';

class ExperienceConfiguration {
  /// The identifiers of your data sources and FAQs. Or, you can specify that you want to use documents indexed via the `BatchPutDocument API`. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  final ExperienceConfigurationContentSourceConfiguration?
  contentSourceConfiguration;

  /// The AWS SSO field name that contains the identifiers of your users, such as their emails. Detailed below.
  final ExperienceConfigurationUserIdentityConfiguration?
  userIdentityConfiguration;

  /// Creates a new [ExperienceConfiguration].
  /// [contentSourceConfiguration] The identifiers of your data sources and FAQs. Or, you can specify that you want to use documents indexed via the `BatchPutDocument API`. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  /// [userIdentityConfiguration] The AWS SSO field name that contains the identifiers of your users, such as their emails. Detailed below.
  ExperienceConfiguration({
    this.contentSourceConfiguration,
    this.userIdentityConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSourceConfiguration': ?contentSourceConfiguration == null
          ? null
          : contentSourceConfiguration!.toMap(),
      'userIdentityConfiguration': ?userIdentityConfiguration == null
          ? null
          : userIdentityConfiguration!.toMap(),
    };
  }

  factory ExperienceConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperienceConfiguration(
      contentSourceConfiguration: map['contentSourceConfiguration'] == null
          ? null
          : ExperienceConfigurationContentSourceConfiguration.fromMap(
              (map['contentSourceConfiguration'] as Map)
                  .cast<String, dynamic>(),
            ),
      userIdentityConfiguration: map['userIdentityConfiguration'] == null
          ? null
          : ExperienceConfigurationUserIdentityConfiguration.fromMap(
              (map['userIdentityConfiguration'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
