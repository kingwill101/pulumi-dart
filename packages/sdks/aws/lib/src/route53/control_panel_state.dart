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
  const ControlPanelState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterArn: (() { final guardedValue = map['clusterArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultControlPanel: (() { final guardedValue = map['defaultControlPanel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routingControlCount: (() { final guardedValue = map['routingControlCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

