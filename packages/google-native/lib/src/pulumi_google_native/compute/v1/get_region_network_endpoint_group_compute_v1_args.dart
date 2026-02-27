// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRegionNetworkEndpointGroup.
class GetRegionNetworkEndpointGroupComputeV1Args {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  GetRegionNetworkEndpointGroupComputeV1Args({
    required this.networkEndpointGroup,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkEndpointGroup'] = networkEndpointGroup;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    return map;
  }

  factory GetRegionNetworkEndpointGroupComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupComputeV1Args(
      networkEndpointGroup:
          pulumi.Input.asInput<String>(map['networkEndpointGroup']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
