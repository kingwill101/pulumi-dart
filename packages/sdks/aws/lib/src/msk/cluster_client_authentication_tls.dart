// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClientAuthenticationTls {
  /// List of ACM Certificate Authority Amazon Resource Names (ARNs).
  final pulumi.Input<List<String>>? certificateAuthorityArns;

  /// Creates a new [ClusterClientAuthenticationTls].
  /// [certificateAuthorityArns] List of ACM Certificate Authority Amazon Resource Names (ARNs).
  ClusterClientAuthenticationTls({
    this.certificateAuthorityArns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthorityArns': ?certificateAuthorityArns,
    };
  }

  factory ClusterClientAuthenticationTls.fromMap(Map<String, dynamic> map) {
    return ClusterClientAuthenticationTls(
      certificateAuthorityArns: map['certificateAuthorityArns'] == null ? null : (((map['certificateAuthorityArns'] as List).cast<String>()).input()).input(),
    );
  }
}

