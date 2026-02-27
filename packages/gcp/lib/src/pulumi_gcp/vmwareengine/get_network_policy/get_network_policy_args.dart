// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkPolicy.
class GetNetworkPolicyArgs {
  /// Location of the resource.
  final pulumi.Input<String> location;

  /// Name of the resource.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  GetNetworkPolicyArgs({
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

  factory GetNetworkPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
