// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDiscoveredService.
class GetDiscoveredServiceArgs {
  /// The location of the discovered service.
  final pulumi.Input<String> location;

  /// The host project of the discovered service.
  final pulumi.Input<String>? project;

  /// The uri of the service.
  final pulumi.Input<String> serviceUri;

  GetDiscoveredServiceArgs({
    required this.location,
    this.project,
    required this.serviceUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serviceUri'] = serviceUri;
    return map;
  }

  factory GetDiscoveredServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredServiceArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceUri: pulumi.Input.asInput<String>(map['serviceUri']),
    );
  }
}
