// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_experience_configuration_content_source_configuration/get_experience_configuration_content_source_configuration.dart';
import '../get_experience_configuration_user_identity_configuration/get_experience_configuration_user_identity_configuration.dart';

class GetExperienceConfiguration {
  /// The identifiers of your data sources and FAQs. This is the content you want to use for your Amazon Kendra Experience. Documented below.
  final List<GetExperienceConfigurationContentSourceConfiguration>
      contentSourceConfigurations;

  /// The AWS SSO field name that contains the identifiers of your users, such as their emails. Documented below.
  final List<GetExperienceConfigurationUserIdentityConfiguration>
      userIdentityConfigurations;

  GetExperienceConfiguration({
    required this.contentSourceConfigurations,
    required this.userIdentityConfigurations,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contentSourceConfigurations'] = Input.encodeList<
            GetExperienceConfigurationContentSourceConfiguration,
            Map<String, dynamic>>(
        contentSourceConfigurations, (value) => value.toMap());
    map['userIdentityConfigurations'] = Input.encodeList<
            GetExperienceConfigurationUserIdentityConfiguration,
            Map<String, dynamic>>(
        userIdentityConfigurations, (value) => value.toMap());
    return map;
  }

  factory GetExperienceConfiguration.fromMap(Map<String, dynamic> map) {
    return GetExperienceConfiguration(
      contentSourceConfigurations: Input.decodeList<
              GetExperienceConfigurationContentSourceConfiguration>(
          map['contentSourceConfigurations'],
          (value) =>
              GetExperienceConfigurationContentSourceConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      userIdentityConfigurations:
          Input.decodeList<GetExperienceConfigurationUserIdentityConfiguration>(
              map['userIdentityConfigurations'],
              (value) =>
                  GetExperienceConfigurationUserIdentityConfiguration.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
