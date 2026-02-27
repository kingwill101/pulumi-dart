// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Network.
class NetworkVmwareengineArgs {
  /// User-provided description for this VMware Engine network.
  final pulumi.Input<String>? description;

  /// The location where the VMwareEngineNetwork should reside.
  final pulumi.Input<String> location;

  /// The ID of the VMwareEngineNetwork.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// VMware Engine network type.
  /// Possible values are: `LEGACY`, `STANDARD`.
  final pulumi.Input<String> type;

  NetworkVmwareengineArgs({
    this.description,
    required this.location,
    this.name,
    this.project,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['type'] = type;
    return map;
  }

  factory NetworkVmwareengineArgs.fromMap(Map<String, dynamic> map) {
    return NetworkVmwareengineArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
