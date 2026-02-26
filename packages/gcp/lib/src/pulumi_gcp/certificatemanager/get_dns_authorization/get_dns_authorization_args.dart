// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDnsAuthorization.
class GetDnsAuthorizationArgs {
  /// The name of the DNS Authorization.
  final Input<String> domain;

  /// The Certificate Manager location. If not specified, "global" is used.
  final Input<String>? location;

  /// The name of the DNS Authorization.
  final Input<String> name;

  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final Input<String>? project;

  GetDnsAuthorizationArgs({
    required this.domain,
    this.location,
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domain'] = domain;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDnsAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsAuthorizationArgs(
      domain: Input.asInput<String>(map['domain']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
