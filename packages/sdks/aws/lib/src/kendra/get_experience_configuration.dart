// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_experience_configuration_content_source_configuration.dart';
import 'get_experience_configuration_user_identity_configuration.dart';

class GetExperienceConfiguration {
  /// The identifiers of your data sources and FAQs. This is the content you want to use for your Amazon Kendra Experience. Documented below.
  final pulumi.Input<List<GetExperienceConfigurationContentSourceConfiguration>> contentSourceConfigurations;
  /// The AWS SSO field name that contains the identifiers of your users, such as their emails. Documented below.
  final pulumi.Input<List<GetExperienceConfigurationUserIdentityConfiguration>> userIdentityConfigurations;

  /// Creates a new [GetExperienceConfiguration].
  /// [contentSourceConfigurations] The identifiers of your data sources and FAQs. This is the content you want to use for your Amazon Kendra Experience. Documented below.
  /// [userIdentityConfigurations] The AWS SSO field name that contains the identifiers of your users, such as their emails. Documented below.
  GetExperienceConfiguration({
    required this.contentSourceConfigurations,
    required this.userIdentityConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSourceConfigurations': pulumi.Input.mapInputValue<List<GetExperienceConfigurationContentSourceConfiguration>, List<Map<String, dynamic>>>(contentSourceConfigurations, (value) => pulumi.Input.encodeList<GetExperienceConfigurationContentSourceConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'userIdentityConfigurations': pulumi.Input.mapInputValue<List<GetExperienceConfigurationUserIdentityConfiguration>, List<Map<String, dynamic>>>(userIdentityConfigurations, (value) => pulumi.Input.encodeList<GetExperienceConfigurationUserIdentityConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetExperienceConfiguration.fromMap(Map<String, dynamic> map) {
    return GetExperienceConfiguration(
      contentSourceConfigurations: (pulumi.Input.decodeList<GetExperienceConfigurationContentSourceConfiguration>(map['contentSourceConfigurations'], (value) => GetExperienceConfigurationContentSourceConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      userIdentityConfigurations: (pulumi.Input.decodeList<GetExperienceConfigurationUserIdentityConfiguration>(map['userIdentityConfigurations'], (value) => GetExperienceConfigurationUserIdentityConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

