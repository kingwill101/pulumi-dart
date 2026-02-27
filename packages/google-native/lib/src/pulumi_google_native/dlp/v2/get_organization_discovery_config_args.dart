// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getOrganizationDiscoveryConfig.
class GetOrganizationDiscoveryConfigArgs {
  final Input<String> discoveryConfigId;
  final Input<String> location;
  final Input<String> organizationId;

  GetOrganizationDiscoveryConfigArgs({
    required this.discoveryConfigId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['discoveryConfigId'] = discoveryConfigId;
    map['location'] = location;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetOrganizationDiscoveryConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationDiscoveryConfigArgs(
      discoveryConfigId: Input.asInput<String>(map['discoveryConfigId']),
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
