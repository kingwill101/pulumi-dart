// ignore_for_file: unused_element, unnecessary_cast

import '../experience_configuration_content_source_configuration/experience_configuration_content_source_configuration.dart';
import '../experience_configuration_user_identity_configuration/experience_configuration_user_identity_configuration.dart';

class ExperienceConfiguration {
  /// The identifiers of your data sources and FAQs. Or, you can specify that you want to use documents indexed via the `BatchPutDocument API`. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  final ExperienceConfigurationContentSourceConfiguration?
      contentSourceConfiguration;

  /// The AWS SSO field name that contains the identifiers of your users, such as their emails. Detailed below.
  final ExperienceConfigurationUserIdentityConfiguration?
      userIdentityConfiguration;

  ExperienceConfiguration({
    this.contentSourceConfiguration,
    this.userIdentityConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentSourceConfigurationValue = contentSourceConfiguration;
    if (contentSourceConfigurationValue != null) {
      map['contentSourceConfiguration'] =
          contentSourceConfigurationValue.toMap();
    }
    final userIdentityConfigurationValue = userIdentityConfiguration;
    if (userIdentityConfigurationValue != null) {
      map['userIdentityConfiguration'] = userIdentityConfigurationValue.toMap();
    }
    return map;
  }

  factory ExperienceConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperienceConfiguration(
      contentSourceConfiguration: map['contentSourceConfiguration'] == null
          ? null
          : ExperienceConfigurationContentSourceConfiguration.fromMap(
              (map['contentSourceConfiguration'] as Map)
                  .cast<String, dynamic>()),
      userIdentityConfiguration: map['userIdentityConfiguration'] == null
          ? null
          : ExperienceConfigurationUserIdentityConfiguration.fromMap(
              (map['userIdentityConfiguration'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
