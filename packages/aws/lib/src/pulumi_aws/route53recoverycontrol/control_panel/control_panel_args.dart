// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ControlPanel.
class ControlPanelArgs {
  /// ARN of the cluster in which this control panel will reside.
  final pulumi.Input<String> clusterArn;

  /// Name describing the control panel.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  ControlPanelArgs({
    required this.clusterArn,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory ControlPanelArgs.fromMap(Map<String, dynamic> map) {
    return ControlPanelArgs(
      clusterArn: pulumi.Input.asInput<String>(map['clusterArn']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
