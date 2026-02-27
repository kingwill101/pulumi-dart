// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGlobalNetworkEndpointGroup.
class GetGlobalNetworkEndpointGroupArgs {
  final Input<String> networkEndpointGroup;
  final Input<String>? project;

  GetGlobalNetworkEndpointGroupArgs({
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

  factory GetGlobalNetworkEndpointGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkEndpointGroupArgs(
      networkEndpointGroup: Input.asInput<String>(map['networkEndpointGroup']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
