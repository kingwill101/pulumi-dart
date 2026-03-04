// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfig_get_configuration_profiles_get_configuration_profiles_args_doc}
/// Arguments for getConfigurationProfiles.
/// {@endtemplate}
/// {@macro pulumi_appconfig_get_configuration_profiles_get_configuration_profiles_args_doc}
class GetConfigurationProfilesArgs {
  /// ID of the AppConfig Application.
  final pulumi.Input<String> applicationId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetConfigurationProfilesArgs].
  /// [applicationId] ID of the AppConfig Application.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetConfigurationProfilesArgs({required this.applicationId, this.region});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'applicationId': applicationId, 'region': ?region};
  }

  factory GetConfigurationProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfilesArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
