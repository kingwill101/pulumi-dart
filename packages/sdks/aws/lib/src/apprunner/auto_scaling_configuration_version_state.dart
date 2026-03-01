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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? autoScalingConfigurationName,
    pulumi.Output<int>? autoScalingConfigurationRevision,
    pulumi.Output<bool>? hasAssociatedService,
    pulumi.Output<bool>? isDefault,
    pulumi.Output<bool>? latest,
    pulumi.Output<int>? maxConcurrency,
    pulumi.Output<int>? maxSize,
    pulumi.Output<int>? minSize,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoScalingConfigurationName = pulumi.Input.asOptionalInput<String>(autoScalingConfigurationName),
      autoScalingConfigurationRevision = pulumi.Input.asOptionalInput<int>(autoScalingConfigurationRevision),
      hasAssociatedService = pulumi.Input.asOptionalInput<bool>(hasAssociatedService),
      isDefault = pulumi.Input.asOptionalInput<bool>(isDefault),
      latest = pulumi.Input.asOptionalInput<bool>(latest),
      maxConcurrency = pulumi.Input.asOptionalInput<int>(maxConcurrency),
      maxSize = pulumi.Input.asOptionalInput<int>(maxSize),
      minSize = pulumi.Input.asOptionalInput<int>(minSize),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoScalingConfigurationName: map['autoScalingConfigurationName'] == null ? null : pulumi.Output.create<String>(map['autoScalingConfigurationName'] as String),
      autoScalingConfigurationRevision: map['autoScalingConfigurationRevision'] == null ? null : pulumi.Output.create<int>(map['autoScalingConfigurationRevision'] as int),
      hasAssociatedService: map['hasAssociatedService'] == null ? null : pulumi.Output.create<bool>(map['hasAssociatedService'] as bool),
      isDefault: map['isDefault'] == null ? null : pulumi.Output.create<bool>(map['isDefault'] as bool),
      latest: map['latest'] == null ? null : pulumi.Output.create<bool>(map['latest'] as bool),
      maxConcurrency: map['maxConcurrency'] == null ? null : pulumi.Output.create<int>(map['maxConcurrency'] as int),
      maxSize: map['maxSize'] == null ? null : pulumi.Output.create<int>(map['maxSize'] as int),
      minSize: map['minSize'] == null ? null : pulumi.Output.create<int>(map['minSize'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

