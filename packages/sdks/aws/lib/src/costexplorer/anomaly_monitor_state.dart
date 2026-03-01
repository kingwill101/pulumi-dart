// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AnomalyMonitor resources.
class AnomalyMonitorState {
  /// ARN of the anomaly monitor.
  final pulumi.Input<String>? arn;
  /// The dimensions to evaluate. Valid values: `SERVICE`.
  final pulumi.Input<String>? monitorDimension;
  /// A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  final pulumi.Input<String>? monitorSpecification;
  /// The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  final pulumi.Input<String>? monitorType;
  /// The name of the monitor.
  final pulumi.Input<String>? name;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AnomalyMonitorState].
  /// [arn] ARN of the anomaly monitor.
  /// [monitorDimension] The dimensions to evaluate. Valid values: `SERVICE`.
  /// [monitorSpecification] A valid JSON representation for the [Expression](https://docs.aws.amazon.com/aws-cost-management/latest/APIReference/API_Expression.html) object.
  /// [monitorType] The possible type values. Valid values: `DIMENSIONAL` | `CUSTOM`.
  /// [name] The name of the monitor.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AnomalyMonitorState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? monitorDimension,
    pulumi.Output<String>? monitorSpecification,
    pulumi.Output<String>? monitorType,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      monitorDimension = pulumi.Input.asOptionalInput<String>(monitorDimension),
      monitorSpecification = pulumi.Input.asOptionalInput<String>(monitorSpecification),
      monitorType = pulumi.Input.asOptionalInput<String>(monitorType),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'monitorDimension': ?monitorDimension,
      'monitorSpecification': ?monitorSpecification,
      'monitorType': ?monitorType,
      'name': ?name,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AnomalyMonitorState.fromMap(Map<String, dynamic> map) {
    return AnomalyMonitorState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      monitorDimension: map['monitorDimension'] == null ? null : pulumi.Output.create<String>(map['monitorDimension'] as String),
      monitorSpecification: map['monitorSpecification'] == null ? null : pulumi.Output.create<String>(map['monitorSpecification'] as String),
      monitorType: map['monitorType'] == null ? null : pulumi.Output.create<String>(map['monitorType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

