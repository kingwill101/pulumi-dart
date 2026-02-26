// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../group_auto_accept/group_auto_accept.dart';

/// The set of arguments for Group.
class GroupArgs4 {
  /// Optional. The auto-accept setting for this group.
  /// Structure is documented below.
  final Input<GroupAutoAccept>? autoAccept;

  /// An optional description of the group.
  final Input<String>? description;

  /// The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  final Input<String> hub;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The name of the group. Group names must be unique.
  /// Possible values are: <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, <span pulumi-lang-nodejs="`center`" pulumi-lang-dotnet="`Center`" pulumi-lang-go="`center`" pulumi-lang-python="`center`" pulumi-lang-yaml="`center`" pulumi-lang-java="`center`">`center`</span>, <span pulumi-lang-nodejs="`edge`" pulumi-lang-dotnet="`Edge`" pulumi-lang-go="`edge`" pulumi-lang-python="`edge`" pulumi-lang-yaml="`edge`" pulumi-lang-java="`edge`">`edge`</span>.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  GroupArgs4({
    this.autoAccept,
    this.description,
    required this.hub,
    this.labels,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoAcceptValue = autoAccept;
    if (autoAcceptValue != null) {
      map['autoAccept'] =
          Input.mapOptionalInputValue<GroupAutoAccept, Map<String, dynamic>>(
              autoAcceptValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['hub'] = hub;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GroupArgs4.fromMap(Map<String, dynamic> map) {
    return GroupArgs4(
      autoAccept: Input.asOptionalInput<GroupAutoAccept>(map['autoAccept']),
      description: Input.asOptionalInput<String>(map['description']),
      hub: Input.asInput<String>(map['hub']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
