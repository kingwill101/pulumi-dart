// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConfigurationSet.
class GetConfigurationSetArgs {
  /// The name of the configuration set.
  final pulumi.Input<String> configurationSetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the container recipe.
  final pulumi.Input<Map<String, String>>? tags;

  GetConfigurationSetArgs({
    required this.configurationSetName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationSetName'] = configurationSetName;
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

  factory GetConfigurationSetArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigurationSetArgs(
      configurationSetName:
          pulumi.Input.asInput<String>(map['configurationSetName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
