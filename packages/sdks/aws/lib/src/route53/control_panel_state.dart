// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ControlPanel resources.
class ControlPanelState {
  /// ARN of the control panel.
  final pulumi.Input<String>? arn;
  /// ARN of the cluster in which this control panel will reside.
  final pulumi.Input<String>? clusterArn;
  /// Whether a control panel is default.
  final pulumi.Input<bool>? defaultControlPanel;
  /// Name describing the control panel.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Number routing controls in a control panel.
  final pulumi.Input<int>? routingControlCount;
  /// Status of control panel: `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ControlPanelState].
  /// [arn] ARN of the control panel.
  /// [clusterArn] ARN of the cluster in which this control panel will reside.
  /// [defaultControlPanel] Whether a control panel is default.
  /// [name] Name describing the control panel.
  /// [routingControlCount] Number routing controls in a control panel.
  /// [status] Status of control panel: `PENDING` when it is being created/updated, `PENDING_DELETION` when it is being deleted, and `DEPLOYED` otherwise.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ControlPanelState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? clusterArn,
    pulumi.Output<bool>? defaultControlPanel,
    pulumi.Output<String>? name,
    pulumi.Output<int>? routingControlCount,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clusterArn = pulumi.Input.asOptionalInput<String>(clusterArn),
      defaultControlPanel = pulumi.Input.asOptionalInput<bool>(defaultControlPanel),
      name = pulumi.Input.asOptionalInput<String>(name),
      routingControlCount = pulumi.Input.asOptionalInput<int>(routingControlCount),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterArn': ?clusterArn,
      'defaultControlPanel': ?defaultControlPanel,
      'name': ?name,
      'routingControlCount': ?routingControlCount,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ControlPanelState.fromMap(Map<String, dynamic> map) {
    return ControlPanelState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clusterArn: map['clusterArn'] == null ? null : pulumi.Output.create<String>(map['clusterArn'] as String),
      defaultControlPanel: map['defaultControlPanel'] == null ? null : pulumi.Output.create<bool>(map['defaultControlPanel'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      routingControlCount: map['routingControlCount'] == null ? null : pulumi.Output.create<int>(map['routingControlCount'] as int),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

