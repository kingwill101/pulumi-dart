// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGlobalNetworkEndpointGroup.
class GetGlobalNetworkEndpointGroupArgs2 {
  final Input<String> networkEndpointGroup;
  final Input<String>? project;

  GetGlobalNetworkEndpointGroupArgs2({
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

  factory GetGlobalNetworkEndpointGroupArgs2.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkEndpointGroupArgs2(
      networkEndpointGroup: Input.asInput<String>(map['networkEndpointGroup']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
