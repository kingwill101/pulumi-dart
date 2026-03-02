// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SSH public key for the cluster nodes.
class SshPublicKeyResponse {
  /// The certificate for SSH.
  final pulumi.Input<String>? certificateData;

  /// Creates a new [SshPublicKeyResponse].
  /// [certificateData] The certificate for SSH.
  SshPublicKeyResponse({
    this.certificateData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateData': ?certificateData,
    };
  }

  factory SshPublicKeyResponse.fromMap(Map<String, dynamic> map) {
    return SshPublicKeyResponse(
      certificateData: map['certificateData'] == null ? null : (map['certificateData'] as String).input(),
    );
  }
}

