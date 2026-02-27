// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDiscoveryConfig.
class GetDiscoveryConfigArgs {
  final pulumi.Input<String> discoveryConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetDiscoveryConfigArgs({
    required this.discoveryConfigId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['discoveryConfigId'] = discoveryConfigId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveryConfigArgs(
      discoveryConfigId: pulumi.Input.asInput<String>(map['discoveryConfigId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
