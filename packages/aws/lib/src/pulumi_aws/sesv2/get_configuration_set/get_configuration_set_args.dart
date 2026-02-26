// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConfigurationSet.
class GetConfigurationSetArgs {
  /// The name of the configuration set.
  final Input<String> configurationSetName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the container recipe.
  final Input<Map<String, String>>? tags;

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
      configurationSetName: Input.asInput<String>(map['configurationSetName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
