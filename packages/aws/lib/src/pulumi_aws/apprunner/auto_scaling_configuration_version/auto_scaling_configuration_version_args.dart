// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AutoScalingConfigurationVersion.
class AutoScalingConfigurationVersionArgs {
  /// Name of the auto scaling configuration.
  final pulumi.Input<String> autoScalingConfigurationName;

  /// Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  final pulumi.Input<int>? maxConcurrency;

  /// Maximal number of instances that App Runner provisions for your service.
  final pulumi.Input<int>? maxSize;

  /// Minimal number of instances that App Runner provisions for your service.
  final pulumi.Input<int>? minSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  AutoScalingConfigurationVersionArgs({
    required this.autoScalingConfigurationName,
    this.maxConcurrency,
    this.maxSize,
    this.minSize,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoScalingConfigurationName'] = autoScalingConfigurationName;
    final maxConcurrencyValue = maxConcurrency;
    if (maxConcurrencyValue != null) {
      map['maxConcurrency'] = maxConcurrencyValue;
    }
    final maxSizeValue = maxSize;
    if (maxSizeValue != null) {
      map['maxSize'] = maxSizeValue;
    }
    final minSizeValue = minSize;
    if (minSizeValue != null) {
      map['minSize'] = minSizeValue;
    }
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

  factory AutoScalingConfigurationVersionArgs.fromMap(
      Map<String, dynamic> map) {
    return AutoScalingConfigurationVersionArgs(
      autoScalingConfigurationName:
          pulumi.Input.asInput<String>(map['autoScalingConfigurationName']),
      maxConcurrency: pulumi.Input.asOptionalInput<int>(map['maxConcurrency']),
      maxSize: pulumi.Input.asOptionalInput<int>(map['maxSize']),
      minSize: pulumi.Input.asOptionalInput<int>(map['minSize']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
