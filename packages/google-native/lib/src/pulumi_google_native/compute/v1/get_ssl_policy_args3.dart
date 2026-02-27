// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSslPolicy.
class GetSslPolicyArgs3 {
  final Input<String>? project;
  final Input<String> sslPolicy;

  GetSslPolicyArgs3({
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

  factory GetSslPolicyArgs3.fromMap(Map<String, dynamic> map) {
    return GetSslPolicyArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      sslPolicy: Input.asInput<String>(map['sslPolicy']),
    );
  }
}
