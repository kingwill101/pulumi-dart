// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getDnsAuthorization.
class GetDnsAuthorizationArgs {
  final Input<String> dnsAuthorizationId;
  final Input<String> location;
  final Input<String>? project;

  GetDnsAuthorizationArgs({
    required this.dnsAuthorizationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsAuthorizationId'] = dnsAuthorizationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetDnsAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return GetDnsAuthorizationArgs(
      dnsAuthorizationId: Input.asInput<String>(map['dnsAuthorizationId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
