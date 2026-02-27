// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getOrganizationDiscoveryConfig.
class GetOrganizationDiscoveryConfigArgs {
  final pulumi.Input<String> discoveryConfigId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

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
      discoveryConfigId: pulumi.Input.asInput<String>(map['discoveryConfigId']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
