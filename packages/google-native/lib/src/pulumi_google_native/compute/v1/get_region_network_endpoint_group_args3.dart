// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRegionNetworkEndpointGroup.
class GetRegionNetworkEndpointGroupArgs3 {
  final Input<String> networkEndpointGroup;
  final Input<String>? project;
  final Input<String> region;

  GetRegionNetworkEndpointGroupArgs3({
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

  factory GetRegionNetworkEndpointGroupArgs3.fromMap(Map<String, dynamic> map) {
    return GetRegionNetworkEndpointGroupArgs3(
      networkEndpointGroup: Input.asInput<String>(map['networkEndpointGroup']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
