// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_vmware_engine_network_args_doc}
/// Arguments for getVmwareEngineNetwork.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_vmware_engine_network_args_doc}
class GetVmwareEngineNetworkArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareEngineNetworkId;

  /// Creates a new [GetVmwareEngineNetworkArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [vmwareEngineNetworkId] Required.
  GetVmwareEngineNetworkArgs({
    required String location,
    String? project,
    required String vmwareEngineNetworkId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        vmwareEngineNetworkId =
            pulumi.Input.asInput<String>(vmwareEngineNetworkId);

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
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      vmwareEngineNetworkId: map['vmwareEngineNetworkId'] as String,
    );
  }
}
