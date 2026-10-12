// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfig_hosted_configuration_version_hosted_configuration_version_args_doc}
/// The set of arguments for HostedConfigurationVersion.
/// {@endtemplate}
/// {@macro pulumi_appconfig_hosted_configuration_version_hosted_configuration_version_args_doc}
class HostedConfigurationVersionArgs {
  /// Application ID.
  final pulumi.Input<String> applicationId;
  /// Configuration profile ID.
  final pulumi.Input<String> configurationProfileId;
  /// Content of the configuration or the configuration data.
  final pulumi.Input<String> content;
  /// Standard MIME type describing the format of the configuration content. For more information, see [Content-Type](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).
  final pulumi.Input<String> contentType;
  /// Description of the configuration.
  final pulumi.Input<String?>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// User-defined label for the AppConfig hosted configuration version. This value must contain at least one non-numeric character.
  final pulumi.Input<String?>? versionLabel;

  /// Creates a new [HostedConfigurationVersionArgs].
  /// [applicationId] Application ID.
  /// [configurationProfileId] Configuration profile ID.
  /// [content] Content of the configuration or the configuration data.
  /// [contentType] Standard MIME type describing the format of the configuration content. For more information, see [Content-Type](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).
  /// [description] Description of the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [versionLabel] User-defined label for the AppConfig hosted configuration version. This value must contain at least one non-numeric character.
  const HostedConfigurationVersionArgs({
    required this.applicationId,
    required this.configurationProfileId,
    required this.content,
    required this.contentType,
    this.description,
    this.region,
    this.versionLabel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'configurationProfileId': configurationProfileId,
      'content': content,
      'contentType': contentType,
      'description': ?description,
      'region': ?region,
      'versionLabel': ?versionLabel,
    };
  }

  factory HostedConfigurationVersionArgs.fromMap(Map<String, dynamic> map) {
    return HostedConfigurationVersionArgs(
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      configurationProfileId: pulumi.Input.fromValue(map['configurationProfileId'] as String),
      content: pulumi.Input.fromValue(map['content'] as String),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionLabel: (() { final guardedValue = map['versionLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
