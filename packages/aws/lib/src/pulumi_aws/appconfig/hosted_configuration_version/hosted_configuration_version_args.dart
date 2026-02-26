// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for HostedConfigurationVersion.
class HostedConfigurationVersionArgs {
  /// Application ID.
  final Input<String> applicationId;

  /// Configuration profile ID.
  final Input<String> configurationProfileId;

  /// Content of the configuration or the configuration data.
  final Input<String> content;

  /// Standard MIME type describing the format of the configuration content. For more information, see [Content-Type](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.17).
  final Input<String> contentType;

  /// Description of the configuration.
  final Input<String>? description;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  HostedConfigurationVersionArgs({
    required this.applicationId,
    required this.configurationProfileId,
    required this.content,
    required this.contentType,
    this.description,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['configurationProfileId'] = configurationProfileId;
    map['content'] = content;
    map['contentType'] = contentType;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory HostedConfigurationVersionArgs.fromMap(Map<String, dynamic> map) {
    return HostedConfigurationVersionArgs(
      applicationId: Input.asInput<String>(map['applicationId']),
      configurationProfileId:
          Input.asInput<String>(map['configurationProfileId']),
      content: Input.asInput<String>(map['content']),
      contentType: Input.asInput<String>(map['contentType']),
      description: Input.asOptionalInput<String>(map['description']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
