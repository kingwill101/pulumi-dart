// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkPeering.
class GetNetworkPeeringVmwareengineArgs {
  /// Name of the resource.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  GetNetworkPeeringVmwareengineArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkPeeringVmwareengineArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringVmwareengineArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
