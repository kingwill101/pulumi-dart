// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1_get_server_tls_policy_args_doc}
/// Arguments for getServerTlsPolicy.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1_get_server_tls_policy_args_doc}
class GetServerTlsPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serverTlsPolicyId;

  /// Creates a new [GetServerTlsPolicyArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serverTlsPolicyId] Required.
  GetServerTlsPolicyArgs({
    required String location,
    String? project,
    required String serverTlsPolicyId,
  })  : location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        serverTlsPolicyId = pulumi.Input.asInput<String>(serverTlsPolicyId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['serverTlsPolicyId'] = serverTlsPolicyId;
    return map;
  }

  factory GetServerTlsPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetServerTlsPolicyArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      serverTlsPolicyId: map['serverTlsPolicyId'] as String,
    );
  }
}
