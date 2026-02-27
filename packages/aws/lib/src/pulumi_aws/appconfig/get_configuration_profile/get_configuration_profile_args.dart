// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConfigurationProfile.
class GetConfigurationProfileArgs {
  /// ID of the AppConfig application to which this configuration profile belongs.
  final pulumi.Input<String> applicationId;

  /// ID of the Configuration Profile.
  final pulumi.Input<String> configurationProfileId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags for the resource.
  final pulumi.Input<Map<String, String>>? tags;

  GetConfigurationProfileArgs({
    required this.applicationId,
    required this.configurationProfileId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationId'] = applicationId;
    map['configurationProfileId'] = configurationProfileId;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetConfigurationProfileArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationProfileArgs(
      applicationId: pulumi.Input.asInput<String>(map['applicationId']),
      configurationProfileId:
          pulumi.Input.asInput<String>(map['configurationProfileId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
