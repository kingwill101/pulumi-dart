// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetwork.
class GetNetworkVmwareengineArgs {
  /// Location of the resource.
  ///
  /// - - -
  final pulumi.Input<String> location;

  /// Name of the resource.
  final pulumi.Input<String> name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  GetNetworkVmwareengineArgs({
    required this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkVmwareengineArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkVmwareengineArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
