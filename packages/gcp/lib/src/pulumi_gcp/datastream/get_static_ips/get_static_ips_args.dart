// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStaticIps.
class GetStaticIpsArgs {
  /// The location to list Datastream IPs for. For example: `us-east1`.
  final pulumi.Input<String> location;

  /// Project from which to list static IP addresses. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;

  GetStaticIpsArgs({
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetStaticIpsArgs.fromMap(Map<String, dynamic> map) {
    return GetStaticIpsArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
