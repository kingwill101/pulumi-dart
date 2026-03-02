// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AutoScalingConfigurationVersion resources.
class AutoScalingConfigurationVersionState {
  /// ARN of this auto scaling configuration version.
  final pulumi.Input<String>? arn;
  /// Name of the auto scaling configuration.
  final pulumi.Input<String>? autoScalingConfigurationName;
  /// The revision of this auto scaling configuration.
  final pulumi.Input<int>? autoScalingConfigurationRevision;
  final pulumi.Input<bool>? hasAssociatedService;
  final pulumi.Input<bool>? isDefault;
  /// Whether the auto scaling configuration has the highest `auto_scaling_configuration_revision` among all configurations that share the same `auto_scaling_configuration_name`.
  final pulumi.Input<bool>? latest;
  /// Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  final pulumi.Input<int>? maxConcurrency;
  /// Maximal number of instances that App Runner provisions for your service.
  final pulumi.Input<int>? maxSize;
  /// Minimal number of instances that App Runner provisions for your service.
  final pulumi.Input<int>? minSize;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Current state of the auto scaling configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AutoScalingConfigurationVersionState].
  /// [arn] ARN of this auto scaling configuration version.
  /// [autoScalingConfigurationName] Name of the auto scaling configuration.
  /// [autoScalingConfigurationRevision] The revision of this auto scaling configuration.
  /// [hasAssociatedService] Optional.
  /// [isDefault] Optional.
  /// [latest] Whether the auto scaling configuration has the highest `auto_scaling_configuration_revision` among all configurations that share the same `auto_scaling_configuration_name`.
  /// [maxConcurrency] Maximal number of concurrent requests that you want an instance to process. When the number of concurrent requests goes over this limit, App Runner scales up your service.
  /// [maxSize] Maximal number of instances that App Runner provisions for your service.
  /// [minSize] Minimal number of instances that App Runner provisions for your service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Current state of the auto scaling configuration. An INACTIVE configuration revision has been deleted and can't be used. It is permanently removed some time after deletion.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AutoScalingConfigurationVersionState({
    this.arn,
    this.autoScalingConfigurationName,
    this.autoScalingConfigurationRevision,
    this.hasAssociatedService,
    this.isDefault,
    this.latest,
    this.maxConcurrency,
    this.maxSize,
    this.minSize,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoScalingConfigurationName': ?autoScalingConfigurationName,
      'autoScalingConfigurationRevision': ?autoScalingConfigurationRevision,
      'hasAssociatedService': ?hasAssociatedService,
      'isDefault': ?isDefault,
      'latest': ?latest,
      'maxConcurrency': ?maxConcurrency,
      'maxSize': ?maxSize,
      'minSize': ?minSize,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AutoScalingConfigurationVersionState.fromMap(Map<String, dynamic> map) {
    return AutoScalingConfigurationVersionState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      autoScalingConfigurationName: map['autoScalingConfigurationName'] == null ? null : ((map['autoScalingConfigurationName'] as String).input()).input(),
      autoScalingConfigurationRevision: map['autoScalingConfigurationRevision'] == null ? null : ((map['autoScalingConfigurationRevision'] as int).input()).input(),
      hasAssociatedService: map['hasAssociatedService'] == null ? null : ((map['hasAssociatedService'] as bool).input()).input(),
      isDefault: map['isDefault'] == null ? null : ((map['isDefault'] as bool).input()).input(),
      latest: map['latest'] == null ? null : ((map['latest'] as bool).input()).input(),
      maxConcurrency: map['maxConcurrency'] == null ? null : ((map['maxConcurrency'] as int).input()).input(),
      maxSize: map['maxSize'] == null ? null : ((map['maxSize'] as int).input()).input(),
      minSize: map['minSize'] == null ? null : ((map['minSize'] as int).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

