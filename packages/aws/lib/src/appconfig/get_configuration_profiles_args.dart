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
  GetConfigurationProfilesArgs({
    required String applicationId,
    String? region,
  })  : applicationId = pulumi.Input.asInput<String>(applicationId),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetConfigurationProfilesArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfilesArgs(
      applicationId: map['applicationId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
