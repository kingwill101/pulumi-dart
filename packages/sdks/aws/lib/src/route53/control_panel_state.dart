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
    this.arn,
    this.clusterArn,
    this.defaultControlPanel,
    this.name,
    this.routingControlCount,
    this.status,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      clusterArn: map['clusterArn'] == null ? null : ((map['clusterArn'] as String).input()).input(),
      defaultControlPanel: map['defaultControlPanel'] == null ? null : ((map['defaultControlPanel'] as bool).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      routingControlCount: map['routingControlCount'] == null ? null : ((map['routingControlCount'] as int).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

