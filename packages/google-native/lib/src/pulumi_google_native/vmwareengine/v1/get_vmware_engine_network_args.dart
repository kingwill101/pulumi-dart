// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getVmwareEngineNetwork.
class GetVmwareEngineNetworkArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> vmwareEngineNetworkId;

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
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      vmwareEngineNetworkId:
          Input.asInput<String>(map['vmwareEngineNetworkId']),
    );
  }
}
