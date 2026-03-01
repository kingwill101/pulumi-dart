// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering HostedConfigurationVersion resources.
class HostedConfigurationVersionState {
  /// Application ID.
  final pulumi.Input<String>? applicationId;
  /// ARN of the AppConfig  hosted configuration version.
  final pulumi.Input<String>? arn;
  /// Configuration profile ID.
  final pulumi.Input<String>? configurationProfileId;
  /// Content of the configuration or the configuration data.
  final pulumi.Input<String>? content;
  /// Standard MIME type describing the format of the configuration content. For more information, see [Content-Type](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).
  final pulumi.Input<String>? contentType;
  /// Description of the configuration.
  final pulumi.Input<String>? description;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Version number of the hosted configuration.
  final pulumi.Input<int>? versionNumber;

  /// Creates a new [HostedConfigurationVersionState].
  /// [applicationId] Application ID.
  /// [arn] ARN of the AppConfig  hosted configuration version.
  /// [configurationProfileId] Configuration profile ID.
  /// [content] Content of the configuration or the configuration data.
  /// [contentType] Standard MIME type describing the format of the configuration content. For more information, see [Content-Type](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).
  /// [description] Description of the configuration.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [versionNumber] Version number of the hosted configuration.
  HostedConfigurationVersionState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? configurationProfileId,
    pulumi.Output<String>? content,
    pulumi.Output<String>? contentType,
    pulumi.Output<String>? description,
    pulumi.Output<String>? region,
    pulumi.Output<int>? versionNumber,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      configurationProfileId = pulumi.Input.asOptionalInput<String>(configurationProfileId),
      content = pulumi.Input.asOptionalInput<String>(content),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      description = pulumi.Input.asOptionalInput<String>(description),
      region = pulumi.Input.asOptionalInput<String>(region),
      versionNumber = pulumi.Input.asOptionalInput<int>(versionNumber);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'arn': ?arn,
      'configurationProfileId': ?configurationProfileId,
      'content': ?content,
      'contentType': ?contentType,
      'description': ?description,
      'region': ?region,
      'versionNumber': ?versionNumber,
    };
  }

  factory HostedConfigurationVersionState.fromMap(Map<String, dynamic> map) {
    return HostedConfigurationVersionState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      configurationProfileId: map['configurationProfileId'] == null ? null : pulumi.Output.create<String>(map['configurationProfileId'] as String),
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      contentType: map['contentType'] == null ? null : pulumi.Output.create<String>(map['contentType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      versionNumber: map['versionNumber'] == null ? null : pulumi.Output.create<int>(map['versionNumber'] as int),
    );
  }
}

