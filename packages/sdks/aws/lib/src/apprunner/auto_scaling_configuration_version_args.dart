// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apprunner_auto_scaling_configuration_version_auto_scaling_configuration_version_args_doc}
/// The set of arguments for AutoScalingConfigurationVersion.
/// {@endtemplate}
/// {@macro pulumi_apprunner_auto_scaling_configuration_version_auto_scaling_configuration_version_args_doc}
class AutoScalingConfigurationVersionArgs {
  /// Name of the auto scaling configuration.
  final pulumi.Input<String> autoScalingConfigurationName;
  /// Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  final pulumi.Input<int?>? maxConcurrency;
  /// Maximal number of instances that App Runner provisions for your service.
  final pulumi.Input<int?>? maxSize;
  /// Minimal number of instances that App Runner provisions for your service.
  final pulumi.Input<int?>? minSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AutoScalingConfigurationVersionArgs].
  /// [autoScalingConfigurationName] Name of the auto scaling configuration.
  /// [maxConcurrency] Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  /// [maxSize] Maximal number of instances that App Runner provisions for your service.
  /// [minSize] Minimal number of instances that App Runner provisions for your service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AutoScalingConfigurationVersionArgs({
    required this.autoScalingConfigurationName,
    this.maxConcurrency,
    this.maxSize,
    this.minSize,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingConfigurationName': autoScalingConfigurationName,
      'maxConcurrency': ?maxConcurrency,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory AutoScalingConfigurationVersionArgs.fromMap(Map<String, dynamic> map) {
    return AutoScalingConfigurationVersionArgs(
      autoScalingConfigurationName: pulumi.Input.fromValue(map['autoScalingConfigurationName'] as String),
      maxConcurrency: (() { final guardedValue = map['maxConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxSize: (() { final guardedValue = map['maxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      minSize: (() { final guardedValue = map['minSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
