// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getVmwareEngineNetwork.
class GetVmwareEngineNetworkArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareEngineNetworkId;

  GetVmwareEngineNetworkArgs({
    required this.location,
    this.project,
    required this.vmwareEngineNetworkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['vmwareEngineNetworkId'] = vmwareEngineNetworkId;
    return map;
  }

  factory GetVmwareEngineNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareEngineNetworkArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      vmwareEngineNetworkId:
          pulumi.Input.asInput<String>(map['vmwareEngineNetworkId']),
    );
  }
}
