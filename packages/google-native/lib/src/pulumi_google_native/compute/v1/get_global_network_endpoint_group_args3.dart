// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGlobalNetworkEndpointGroup.
class GetGlobalNetworkEndpointGroupArgs3 {
  final Input<String> networkEndpointGroup;
  final Input<String>? project;

  GetGlobalNetworkEndpointGroupArgs3({
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

  factory GetGlobalNetworkEndpointGroupArgs3.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkEndpointGroupArgs3(
      networkEndpointGroup: Input.asInput<String>(map['networkEndpointGroup']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
