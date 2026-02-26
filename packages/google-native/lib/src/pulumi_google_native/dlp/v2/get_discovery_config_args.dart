// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDiscoveryConfig.
class GetDiscoveryConfigArgs {
  final Input<String> discoveryConfigId;
  final Input<String> location;
  final Input<String>? project;

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
      discoveryConfigId: Input.asInput<String>(map['discoveryConfigId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
