// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_route53_recovery_control_control_panel_control_panel_args_doc}
/// The set of arguments for ControlPanel.
/// {@endtemplate}
/// {@macro pulumi_route53_recovery_control_control_panel_control_panel_args_doc}
class ControlPanelArgs {
  /// ARN of the cluster in which this control panel will reside.
  final pulumi.Input<String> clusterArn;
  /// Name describing the control panel.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ControlPanelArgs].
  /// [clusterArn] ARN of the cluster in which this control panel will reside.
  /// [name] Name describing the control panel.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ControlPanelArgs({
    required pulumi.Output<String> clusterArn,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      clusterArn = pulumi.Input.asInput<String>(clusterArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory ControlPanelArgs.fromMap(Map<String, dynamic> map) {
    return ControlPanelArgs(
      clusterArn: pulumi.Output.create<String>(map['clusterArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

