// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_dns_authorization_args_doc}
/// Arguments for getDnsAuthorization.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_dns_authorization_args_doc}
class GetDnsAuthorizationArgs {
  final pulumi.Input<String> dnsAuthorizationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetDnsAuthorizationArgs].
  /// [dnsAuthorizationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetDnsAuthorizationArgs({
    required String dnsAuthorizationId,
    required String location,
    String? project,
  })  : dnsAuthorizationId = pulumi.Input.asInput<String>(dnsAuthorizationId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project);

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
      dnsAuthorizationId: map['dnsAuthorizationId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
