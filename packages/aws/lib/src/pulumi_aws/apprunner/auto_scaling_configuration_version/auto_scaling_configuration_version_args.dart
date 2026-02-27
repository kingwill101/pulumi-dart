// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for AutoScalingConfigurationVersion.
class AutoScalingConfigurationVersionArgs {
  /// Name of the auto scaling configuration.
  final Input<String> autoScalingConfigurationName;

  /// Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  final Input<int>? maxConcurrency;

  /// Maximal number of instances that App Runner provisions for your service.
  final Input<int>? maxSize;

  /// Minimal number of instances that App Runner provisions for your service.
  final Input<int>? minSize;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
          Input.asInput<String>(map['autoScalingConfigurationName']),
      maxConcurrency: Input.asOptionalInput<int>(map['maxConcurrency']),
      maxSize: Input.asOptionalInput<int>(map['maxSize']),
      minSize: Input.asOptionalInput<int>(map['minSize']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
