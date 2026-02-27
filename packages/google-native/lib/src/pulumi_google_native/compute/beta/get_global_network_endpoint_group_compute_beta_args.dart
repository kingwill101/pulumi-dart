// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlobalNetworkEndpointGroup.
class GetGlobalNetworkEndpointGroupComputeBetaArgs {
  final pulumi.Input<String> networkEndpointGroup;
  final pulumi.Input<String>? project;

  GetGlobalNetworkEndpointGroupComputeBetaArgs({
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

  factory GetGlobalNetworkEndpointGroupComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalNetworkEndpointGroupComputeBetaArgs(
      networkEndpointGroup:
          pulumi.Input.asInput<String>(map['networkEndpointGroup']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
