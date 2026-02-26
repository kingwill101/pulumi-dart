// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for ControlPanel.
class ControlPanelArgs {
  /// ARN of the cluster in which this control panel will reside.
  final Input<String> clusterArn;

  /// Name describing the control panel.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      clusterArn: Input.asInput<String>(map['clusterArn']),
      name: Input.asOptionalInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
