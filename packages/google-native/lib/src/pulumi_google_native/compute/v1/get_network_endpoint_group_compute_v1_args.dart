// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkEndpointGroup.
class GetNetworkEndpointGroupComputeV1Args {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  GetNetworkEndpointGroupComputeV1Args({
    required this.networkEndpointGroup,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkEndpointGroup'] = networkEndpointGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['zone'] = zone;
    return map;
  }

  factory GetNetworkEndpointGroupComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetNetworkEndpointGroupComputeV1Args(
      networkEndpointGroup:
          pulumi.Input.asInput<String>(map['networkEndpointGroup']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      zone: pulumi.Input.asInput<String>(map['zone']),
    );
  }
}
