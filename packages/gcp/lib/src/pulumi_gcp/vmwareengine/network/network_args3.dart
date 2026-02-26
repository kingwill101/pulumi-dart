// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Network.
class NetworkArgs3 {
  /// User-provided description for this VMware Engine network.
  final Input<String>? description;

  /// The location where the VMwareEngineNetwork should reside.
  final Input<String> location;

  /// The ID of the VMwareEngineNetwork.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// VMware Engine network type.
  /// Possible values are: `LEGACY`, `STANDARD`.
  final Input<String> type;

  NetworkArgs3({
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

  factory NetworkArgs3.fromMap(Map<String, dynamic> map) {
    return NetworkArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
