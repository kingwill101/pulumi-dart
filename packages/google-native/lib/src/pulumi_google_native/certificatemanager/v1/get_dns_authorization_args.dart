// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDnsAuthorization.
class GetDnsAuthorizationArgs {
  final pulumi.Input<String> dnsAuthorizationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      dnsAuthorizationId:
          pulumi.Input.asInput<String>(map['dnsAuthorizationId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
