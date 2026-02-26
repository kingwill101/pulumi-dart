// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSslCert.
class GetSslCertArgs {
  final Input<String> instance;
  final Input<String>? project;
  final Input<String> sha1Fingerprint;

  GetSslCertArgs({
    required this.instance,
    this.project,
    required this.sha1Fingerprint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instance'] = instance;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['sha1Fingerprint'] = sha1Fingerprint;
    return map;
  }

  factory GetSslCertArgs.fromMap(Map<String, dynamic> map) {
    return GetSslCertArgs(
      instance: Input.asInput<String>(map['instance']),
      project: Input.asOptionalInput<String>(map['project']),
      sha1Fingerprint: Input.asInput<String>(map['sha1Fingerprint']),
    );
  }
}
