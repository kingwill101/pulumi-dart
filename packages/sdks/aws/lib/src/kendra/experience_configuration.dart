// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experience_configuration_content_source_configuration.dart';
import 'experience_configuration_user_identity_configuration.dart';

class ExperienceConfiguration {
  /// The identifiers of your data sources and FAQs. Or, you can specify that you want to use documents indexed via the `BatchPutDocument API`. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  final pulumi.Input<ExperienceConfigurationContentSourceConfiguration>? contentSourceConfiguration;
  /// The AWS SSO field name that contains the identifiers of your users, such as their emails. Detailed below.
  final pulumi.Input<ExperienceConfigurationUserIdentityConfiguration>? userIdentityConfiguration;

  /// Creates a new [ExperienceConfiguration].
  /// [contentSourceConfiguration] The identifiers of your data sources and FAQs. Or, you can specify that you want to use documents indexed via the `BatchPutDocument API`. The provider will only perform drift detection of its value when present in a configuration. Detailed below.
  /// [userIdentityConfiguration] The AWS SSO field name that contains the identifiers of your users, such as their emails. Detailed below.
  const ExperienceConfiguration({
    this.contentSourceConfiguration,
    this.userIdentityConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentSourceConfiguration': ?pulumi.Input.mapOptionalInputValue<ExperienceConfigurationContentSourceConfiguration, Map<String, dynamic>>(contentSourceConfiguration, (value) => value.toMap()),
      'userIdentityConfiguration': ?pulumi.Input.mapOptionalInputValue<ExperienceConfigurationUserIdentityConfiguration, Map<String, dynamic>>(userIdentityConfiguration, (value) => value.toMap()),
    };
  }

  factory ExperienceConfiguration.fromMap(Map<String, dynamic> map) {
    return ExperienceConfiguration(
      contentSourceConfiguration: (() { final guardedValue = map['contentSourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperienceConfigurationContentSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userIdentityConfiguration: (() { final guardedValue = map['userIdentityConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExperienceConfigurationUserIdentityConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

