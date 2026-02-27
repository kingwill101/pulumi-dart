// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSslPolicy.
class GetSslPolicyArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> sslPolicy;

  GetSslPolicyArgs({
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

  factory GetSslPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSslPolicyArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sslPolicy: pulumi.Input.asInput<String>(map['sslPolicy']),
    );
  }
}
