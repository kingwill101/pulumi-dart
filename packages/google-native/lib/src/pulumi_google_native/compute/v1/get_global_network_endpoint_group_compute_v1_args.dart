// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlobalNetworkEndpointGroup.
class GetGlobalNetworkEndpointGroupComputeV1Args {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;

  GetGlobalNetworkEndpointGroupComputeV1Args({
    required this.networkEndpointGroup,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkEndpointGroup'] = networkEndpointGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetGlobalNetworkEndpointGroupComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalNetworkEndpointGroupComputeV1Args(
      networkEndpointGroup:
          pulumi.Input.asInput<String>(map['networkEndpointGroup']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
