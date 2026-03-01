// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfig_get_configuration_profile_get_configuration_profile_args_doc}
/// Arguments for getConfigurationProfile.
/// {@endtemplate}
/// {@macro pulumi_appconfig_get_configuration_profile_get_configuration_profile_args_doc}
class GetConfigurationProfileArgs {
  /// ID of the AppConfig application to which this configuration profile belongs.
  final pulumi.Input<String> applicationId;
  /// ID of the Configuration Profile.
  final pulumi.Input<String> configurationProfileId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetConfigurationProfileArgs].
  /// [applicationId] ID of the AppConfig application to which this configuration profile belongs.
  /// [configurationProfileId] ID of the Configuration Profile.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags for the resource.
  GetConfigurationProfileArgs({
    required pulumi.Output<String> applicationId,
    required pulumi.Output<String> configurationProfileId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      configurationProfileId = pulumi.Input.asInput<String>(configurationProfileId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'configurationProfileId': configurationProfileId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetConfigurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileArgs(
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      configurationProfileId: pulumi.Output.create<String>(map['configurationProfileId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

