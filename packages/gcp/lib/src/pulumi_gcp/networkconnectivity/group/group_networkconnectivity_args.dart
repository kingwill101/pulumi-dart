// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../group_auto_accept/group_auto_accept.dart';

/// The set of arguments for Group.
class GroupNetworkconnectivityArgs {
  /// Optional. The auto-accept setting for this group.
  /// Structure is documented below.
  final pulumi.Input<GroupAutoAccept>? autoAccept;

  /// An optional description of the group.
  final pulumi.Input<String>? description;

  /// The name of the hub. Hub names must be unique. They use the following form: projects/{projectNumber}/locations/global/hubs/{hubId}
  final pulumi.Input<String> hub;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name of the group. Group names must be unique.
  /// Possible values are: `default`, `center`, `edge`.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GroupNetworkconnectivityArgs({
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
      map['autoAccept'] = pulumi.Input.mapOptionalInputValue<GroupAutoAccept,
          Map<String, dynamic>>(autoAcceptValue, (value) => value.toMap());
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

  factory GroupNetworkconnectivityArgs.fromMap(Map<String, dynamic> map) {
    return GroupNetworkconnectivityArgs(
      autoAccept:
          pulumi.Input.asOptionalInput<GroupAutoAccept>(map['autoAccept']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      hub: pulumi.Input.asInput<String>(map['hub']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
