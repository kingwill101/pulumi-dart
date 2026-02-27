// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSslPolicy.
class GetSslPolicyComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslPolicy;

  GetSslPolicyComputeV1Args({
    this.project,
    required this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sslPolicy'] = sslPolicy;
    return map;
  }

  factory GetSslPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return GetSslPolicyComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sslPolicy: pulumi.Input.asInput<String>(map['sslPolicy']),
    );
  }
}
