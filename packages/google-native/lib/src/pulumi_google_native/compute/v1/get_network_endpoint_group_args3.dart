// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNetworkEndpointGroup.
class GetNetworkEndpointGroupArgs3 {
  final Input<String> networkEndpointGroup;
  final Input<String>? project;
  final Input<String> zone;

  GetNetworkEndpointGroupArgs3({
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

  factory GetNetworkEndpointGroupArgs3.fromMap(Map<String, dynamic> map) {
    return GetNetworkEndpointGroupArgs3(
      networkEndpointGroup: Input.asInput<String>(map['networkEndpointGroup']),
      project: Input.asOptionalInput<String>(map['project']),
      zone: Input.asInput<String>(map['zone']),
    );
  }
}
