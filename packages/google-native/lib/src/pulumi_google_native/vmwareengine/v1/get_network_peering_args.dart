// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getNetworkPeering.
class GetNetworkPeeringArgs {
  final pulumi.Input<String> networkPeeringId;
  final pulumi.Input<String>? project;

  GetNetworkPeeringArgs({
    required this.networkPeeringId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkPeeringId'] = networkPeeringId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetNetworkPeeringArgs.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringArgs(
      networkPeeringId: pulumi.Input.asInput<String>(map['networkPeeringId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
